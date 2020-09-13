Server.SetPetAI(
        21, --the index of pet
        function(pet,ai,event)
        
                if(event == AI_INIT) then
                        ai.customData.timer = 1;
                end

                if(event == AI_UPDATE) then
                        --If you get 200 distance away, follow the master.
                        --If you get 400 distance away, teleport the master.
                        --ai.SetFollowMaster(true,200,400)

                        --If you do not have a target, follow the master.
                        if(ai.GetTargetUnit() == 1) then
                                ai.SetFollowMaster(true,200,400)
                        end

                        --basic 100,200
                        --ai.SetFollowMaster(true)

                        ai.SetNearTarget(2,200) 

                        --Use skill if target of pet exists
                        --Skills are basically fired towards the target.
                        if(ai.GetTargetUnit() ~= 1) then
                                --Stop tracking when targets are set
                                ai.SetFollowMaster(false)
                                ai.StopMove()

                                ai.MoveToPosition(ai.GetTargetUnit().x,ai.GetTargetUnit().y)
                                ai.AddMasterBuff(15)
                                ai.UseSkill(23) 
                                -- Firing from the pet's master position to the target
                                ai.UseSkill(
                                22
                                ,1
                                ,Point(ai.GetMasterUnit().x,ai.GetMasterUnit().y))
                        end

                        --Acquire dropped items around once every 2 seconds                        
                        ai.customData.timer = ai.customData.timer + 1;
                        if(ai.customData.timer == 3) then
                                -- Obtain a drop item within a radius of 100
                                ai.AcquireNearDropItem(100)
                                ai.customData.timer = 0;
                        end
                end

        end
)