class PlansController < ApplicationController
  def plan_detail
    if params["plan/new_new_plan"] != nil
      new_new_plan(params)
    else
      @plan = Plan.find(params[:plan_id])
      render "/plan/plan_detail"
    end
  end
  def new_new_plan(params)
    puts("CCAAAAALLLED")
    pokemon = params["plan/new_new_plan"]
    plan = Plan.find(pokemon[:extraparam])

    plan.plan1 = pokemon["p1"]
    plan.plan2 = pokemon["p2"]
    plan.plan3 = pokemon["p3"]
    plan.plan4 = pokemon["p4"]
    plan.plan5 = pokemon["p5"]
    plan.plan6 = pokemon["p6"]
    plan.plan7 = pokemon["p7"]
    plan.plan8 = pokemon["p8"]
    plan.save
    redirect_to root_path
  end
end