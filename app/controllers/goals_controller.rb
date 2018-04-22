class GoalsController < ApplicationController

	def add
    puts("1234")
    puts("1234")
    puts("1234")
    render "/goal/add"
	end
  def get_new
  end
  def show_detail
    if params["goal/plan_new_submit"] != nil
      plan_new_submit(params)
    else
      puts("here is the id")
      puts(params[:id])
      puts("here is the id")
      @goal = Goal.find(params[:goal_id])
      @plans = Plan.where("goal_id=?",params[:goal_id])
      render "/goal/show_detail"
    end
  end

  def new
  	# puts(params)
  	# puts(params["pokemons/new_submit"])
  	# pokemon = params["pokemons/new_submit"]
  	# if pokemon != nil
  	# 	Pokemon.create(
   #  		name: pokemon["name"],
   #  		level: rand(1..20),
   #  		health: 100,
   #  		ndex: pokemon["ndex"],
   #  		trainer_id: current_trainer.id
  	# 	)
  	# 	redirect_to "/trainer?"
  	# end
  end 
  def plan_new_submit(params)
    puts("CCAAAAALLLED")
    pokemon = params["goal/plan_new_submit"]
    plans = Plan.where("goal_id=?",pokemon[:extraparam])

    plans[0].name = pokemon["p1"]
    plans[0].save
    plans[1].name = pokemon["p1"]
    plans[1].save
    plans[2].name = pokemon["p1"]
    plans[2].save
    plans[3].name = pokemon["p1"]
    plans[3].save
    plans[4].name = pokemon["p1"]
    plans[4].save
    plans[5].name = pokemon["p1"]
    plans[5].save
    plans[6].name = pokemon["p1"]
    plans[6].save
    plans[7].name = pokemon["p1"]
    plans[7].save
    redirect_to root_path
  end
  def new_submit
    pokemon = params["goal/new_submit"]
    gid = Goal.create(
      name: pokemon["name"],
      user_id: current_user.id
      #trainer_id: current_trainer.id
    )
    p1=Plan.create(
      name: pokemon["p1"],
      goal_id: gid.id
      #trainer_id: current_trainer.id
    )
    p2=Plan.create(
      name: pokemon["p2"],
      goal_id: gid.id
      #trainer_id: current_trainer.id
    )
    p3=Plan.create(
      name: pokemon["p3"],
      goal_id: gid.id
      #trainer_id: current_trainer.id
    )
    p4=Plan.create(
      name: pokemon["p4"],
      goal_id: gid.id
      #trainer_id: current_trainer.id
    )
    p5=Plan.create(
      name: pokemon["p5"],
      goal_id: gid.id
      #trainer_id: current_trainer.id
    )
    p6=Plan.create(
      name: pokemon["p6"],
      goal_id: gid.id
      #trainer_id: current_trainer.id
    )
    p7=Plan.create(
      name: pokemon["p7"],
      goal_id: gid.id
      #trainer_id: current_trainer.id
    )
    p8=Plan.create(
      name: pokemon["p8"],
      goal_id: gid.id
      #trainer_id: current_trainer.id
    )
    redirect_to root_path
  end 

end