include FileUtils

desc "create an empty day folder"
task :make_day, [:week, :day] do |t, args|
  mkdir(path_for(args[:week],args[:day]))
  touch("#{path_for(args[:week],args[:day])}/.gitkeep")
end

desc "create an empty week folder"
task :make_week, [:week] do |t, args|
  mkdir("w#{pad(args[:week])}")
end

desc "create a new week's README or syllabus"
task :make_syllabus, [:week] do |t, args|
  file = "w#{pad(args[:week])}/README.md"
  touch(file)
  File.open(file, 'w+').write(syllabus(args[:week]))
end

desc "create a new week folder with days and a README"
task :scaffold, [:week] do |t, args|
  Rake::Task[:make_week].invoke(args[:week])
  (1..5).each_with_index do |day, i|
    if i == 0
      Rake::Task[:make_day].invoke(args[:week], day)
    else
      Rake::Task[:make_day].reenable
      Rake::Task[:make_day].invoke(args[:week], day)
    end
  end
  Rake::Task[:make_syllabus].invoke(args[:week])
end

def pad(n)
  n.to_s.rjust(2, "0")
end

def path_for(week, day)
  "w#{pad(week)}/d#{pad(day)}"
end

def syllabus(w)
  syllabus = <<EOF
# Week #{w}

### What did we do last week?

- **Module name**: description...

### What are we doing this week?

| Monday | Tuesday | Wednesday | Thursday | Friday |
|:------:|:-------:|:---------:|:--------:|:------:|
| | | | | |

### Suggested Readings and Examples

Here is a list of readings, tutorials, and examples for this week's lessons:

- **Lesson name** (link directly if one link, or sub-lists if more than one...)

### What are we doing [next week](/w#{pad(w.to_i+1)}/README.md)?

- **Module name**: description...
EOF
end
