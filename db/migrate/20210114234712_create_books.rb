class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author_name
      t.integer :num_of_pages
      t.references :user, foreign_key: { on_delete: :cascade }
      t.timestamps
    end
  end
end

@patient = Patient.new(name: “Matteo”)
	if @patient.save #if it correctly persists the instance
		#success message with flash
		redirect ‘/patients’ #where in the list of patients we now see the new patient
	else #if validations reject the persistence attempt
		#create an error message possibly with flash
		redirect ‘/new’ #where the form to create a new patient lives
end





















