# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  some_meetings    = Meeting.create([ {:title => "primera reunion", :fecha => "01/03/2012 8:30:00.0"},
                                      {:title => "segunda reunion", :fecha => "03/04/2012 9:30:00.0"} ])

  some_commitments = Commitment.create([ { :title => "revision de bibliografia",
                        :description   => "Revision de las tesis de grado anteriores relacionadas con el tema",
                        :thesis_id     => 1,
                        :meeting_id    => 1,
                        :due_date      => "10/10/2013 14:30:00.0",
                        :done          => false},

                       { :title => "capitulo 1",
                         :description  => "Analisis de la economia de Walras",
                         :thesis_id    => 1,
                         :meeting_id   => 2,
                         :due_date     => "11/11/2013 8:30:00.0",
                         :done         => false}
                    ])

some_teachers =   Teacher.create([ { :name =>"ahl", :email =>"ahl@uniandes.edu.co", :created_at =>"01/04/2012", :updated_at =>"01/05/2012"}])

some_thesis =    Thesis.create([{ :title =>"El equilibrio economico dinamico",
                                  :description => "Analisis del equilibrio economico desde Walras hasta los economistas actuales",
                                  :teacher_id  => 1},

                                { :title =>"Los mercados no regulados y la destrucion del tejido social",
                                  :description => "Estudio sobre el efecto de la desregulacion de mercados y el aumento de la pobreza, segun Steinberg",
                                  :teacher_id  => 1}
                               ])



