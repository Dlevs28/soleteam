class SemesterOneController < SemestersController

	def new
		@semester = Semester.new
	end
		else
			render :new
		end
	end

	private

	def secure_params
		params.require(:semester).permit(:name,:email, :content)
	end
end
