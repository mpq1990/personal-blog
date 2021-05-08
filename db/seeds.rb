# frozen_string_literal: true

3.times do |i|
  Topic.create!(
    title: "Topic #{i}"
  )
end

puts '3 topics created'

10.times do |i|
  Blog.create!(
    title: "My Blog POst #{i}",
    body: "here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
    topic_id: Topic.last.id
  )
end

puts '10 blog posts created'

5.times do |i|
  Skill.create!(
    title: "Rails #{i}",
    percent_utilized: 15
  )
end

puts '5 skills created'

8.times do |i|
  Portfolio.create!(
    title: "Portfolio title #{i}",
    subtitle: 'Ruby on Rails',
    body: 'Maecenas dui diam, tempor at velit sed, pulvinar lacinia nisl. Praesent iaculis arcu id eros ultrices lobortis. Cras sit amet justo blandit, maximus ipsum eu, lobortis mauris. Sed sit amet massa augue. Nulla sed dolor neque. Duis metus urna, scelerisque at pulvinar at, tristique in quam. Etiam vel ultrices justo.',
    main_image: 'https://via.placeholder.com/600x400',
    thumb_image: 'https://via.placeholder.com/350x200'
  )
end

Portfolio.create!(
  title: 'Portfolio title 1',
  subtitle: 'React',
  body: 'Maecenas dui diam, tempor at velit sed, pulvinar lacinia nisl. Praesent iaculis arcu id eros ultrices lobortis. Cras sit amet justo blandit, maximus ipsum eu, lobortis mauris. Sed sit amet massa augue. Nulla sed dolor neque. Duis metus urna, scelerisque at pulvinar at, tristique in quam. Etiam vel ultrices justo.',
  main_image: 'https://via.placeholder.com/600x400',
  thumb_image: 'https://via.placeholder.com/350x200'
)

puts '9 portfolio items created'

3.times do |i|
  Portfolio.last.technologies.create!(name: "Technology #{i}")
end

puts '3 technologies created'
