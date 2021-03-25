-- offsets are from the target point with forward being in the direction from the initial point to the target point
-- offsets are multipled by the largest squad size, keep them as units
yoffset = -1.5

formation = 
{
    -- root node, the destination
	scale = 8,
    x = 0,
    y = 0,
    Children = 
    {
        -- left
        {
            x = -1,
            y = yoffset * 0.5,
            Children = 
            {
                {
                    x = -1,
                    y = 0,
                },
            },
        },
        -- right
        {
            x = 1,
            y = yoffset * 0.5,
            Children = 
            {
                {
                    x = 1,
                    y = 0,
                },
            },
        },
        -- back
        {
            x = 0,
            y = yoffset,
            Children = 
            {
                {
                    x = 0,
                    y = yoffset,
                    Children = 
                    {
                        {
                            x = 0,
                            y = -1,
                        },
                    },
                },
            },
        },
        -- back and left
        {
            x = -1,
            y = yoffset * 1.5,
            Children = 
            {
                {
                    x = 0,
                    y = yoffset,
                    Children = 
                    {
                        {
                            x = 0,
                            y = yoffset,
                        },
                    },
                },
                {
                    x = yoffset,
                    y = yoffset,
                },
                {
                    x = -1,
                    y = 0,
                },
            },
        },
        -- back and right
        {
            x = 1,
            y = yoffset * 1.5,
            Children = 
            {
                {
                    x = 0,
                    y = yoffset,
                    Children = 
                    {
                        {
                            x = 0,
                            y = yoffset,
                        },
                    },
                },
                {
                    x = 1,
                    y = yoffset,
                },
                {
                    x = 1,
                    y = 0,
                },
            },
        },
    },
}