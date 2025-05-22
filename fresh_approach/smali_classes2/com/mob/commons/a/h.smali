.class public Lcom/mob/commons/a/h;
.super Lcom/mob/commons/a/d;
.source "DClt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/mob/commons/a/d;-><init>()V

    return-void
.end method

.method private a(Ljava/util/HashMap;)J
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "capacity"

    const-string v4, "health"

    const-string v5, "current_avg"

    const-string v6, "current_now"

    const-string v7, "scale"

    const-string v8, "charge_type"

    const-string v9, "technology"

    const-string v10, "present"

    const-string v11, "batteryState"

    const-string v12, "lightMode"

    const-string v13, "light"

    const-string v14, "time"

    const-string v15, "level"

    const-string v1, "plugged"

    move-object/from16 v16, v3

    const-string v3, "status"

    move-object/from16 v17, v4

    const-string v4, "voltage"

    move-object/from16 v18, v5

    const-string v5, "temperature"

    move-object/from16 v19, v6

    const-string v6, "nextUploadTime"

    const-wide/16 v20, 0x0

    move-object/from16 v22, v6

    .line 84
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/mob/commons/a/h;->j()Ljava/util/HashMap;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    const/16 v23, 0x0

    .line 95
    :try_start_1
    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 96
    :try_start_2
    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 97
    :try_start_3
    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 98
    :try_start_4
    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Ljava/util/HashMap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-nez v27, :cond_0

    .line 100
    :try_start_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v28, v14

    move-object v14, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v28, v14

    move-object/from16 v29, v23

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v27

    move-object/from16 v27, v31

    goto/16 :goto_6

    :cond_0
    move-object/from16 v28, v14

    move-object/from16 v14, v27

    .line 102
    :goto_0
    :try_start_6
    invoke-virtual {v14, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Ljava/util/ArrayList;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 103
    :try_start_7
    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v29, v0

    check-cast v29, Ljava/util/ArrayList;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 104
    :try_start_8
    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    check-cast v30, Ljava/util/ArrayList;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 105
    :try_start_9
    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v31, v0

    check-cast v31, Ljava/util/ArrayList;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 106
    :try_start_a
    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object/from16 v23, v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v32, v14

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v32, v14

    move-object/from16 v31, v23

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v32, v14

    move-object/from16 v30, v23

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object/from16 v32, v14

    move-object/from16 v29, v23

    goto :goto_1

    :catchall_5
    move-exception v0

    move-object/from16 v32, v14

    move-object/from16 v27, v23

    move-object/from16 v29, v27

    :goto_1
    move-object/from16 v30, v29

    :goto_2
    move-object/from16 v31, v30

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object/from16 v28, v14

    move-object/from16 v27, v23

    goto :goto_5

    :catchall_7
    move-exception v0

    move-object/from16 v28, v14

    move-object/from16 v26, v23

    goto :goto_4

    :catchall_8
    move-exception v0

    move-object/from16 v28, v14

    move-object/from16 v25, v23

    goto :goto_3

    :catchall_9
    move-exception v0

    move-object/from16 v28, v14

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    :goto_3
    move-object/from16 v26, v25

    :goto_4
    move-object/from16 v27, v26

    :goto_5
    move-object/from16 v29, v27

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    .line 108
    :goto_6
    :try_start_b
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v14

    invoke-virtual {v14, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move-object/from16 v14, v32

    :goto_7
    if-nez v24, :cond_1

    .line 111
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 113
    :cond_1
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v25, :cond_3

    if-eqz v26, :cond_3

    if-eqz v27, :cond_3

    if-eqz v29, :cond_3

    if-eqz v30, :cond_3

    if-eqz v31, :cond_3

    if-eqz v23, :cond_3

    move-object/from16 v32, v14

    .line 117
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ne v14, v0, :cond_3

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ne v14, v0, :cond_3

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ne v14, v0, :cond_3

    .line 118
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ne v14, v0, :cond_3

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ne v14, v0, :cond_3

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ne v14, v0, :cond_3

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-eq v14, v0, :cond_2

    goto :goto_8

    :cond_2
    move-object/from16 v33, v24

    move-object/from16 v0, v26

    move-object/from16 v34, v30

    move-object/from16 v35, v31

    move-object/from16 v14, v32

    goto :goto_9

    .line 119
    :cond_3
    :goto_8
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 120
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 121
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 122
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 123
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 124
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 125
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 126
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 127
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v33, v24

    move-object/from16 v0, v26

    move-object/from16 v34, v30

    move-object/from16 v35, v31

    :goto_9
    move-object/from16 v26, v1

    move-object/from16 v24, v23

    move-object/from16 v1, v29

    move-object/from16 v23, v11

    move-object/from16 v11, v25

    move-object/from16 v25, v15

    move-object/from16 v15, v27

    .line 130
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v27

    .line 131
    invoke-virtual/range {v27 .. v27}, Lcom/mob/tools/utils/DeviceHelper;->getScreenBrightness()I

    move-result v29

    move-object/from16 v30, v3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual/range {v27 .. v27}, Lcom/mob/tools/utils/DeviceHelper;->getScreenBrightnessMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v6, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {v6, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 137
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v14, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    invoke-virtual {v14, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 141
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 143
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v19

    .line 144
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v18

    .line 146
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v17

    .line 148
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v16

    .line 150
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v30

    .line 158
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v8, v34

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v26

    .line 160
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v10, v35

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, v25

    .line 162
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {v14, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {v14, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-virtual {v14, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-virtual {v14, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-virtual {v14, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v23

    .line 171
    invoke-virtual {v6, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v0

    .line 174
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v3, v33

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v28

    .line 175
    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v22

    .line 176
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v7, 0x3e8

    cmp-long v9, v4, v20

    if-nez v9, :cond_4

    .line 179
    invoke-static {}, Lcom/mob/commons/b;->J()J

    move-result-wide v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    invoke-static {v4, v5}, Ljava/lang/Long;->signum(J)I

    mul-long v4, v4, v7

    add-long/2addr v4, v0

    .line 180
    :try_start_c
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v9, 0xc8

    if-lt v3, v9, :cond_5

    cmp-long v3, v0, v4

    if-gez v3, :cond_5

    sub-long v20, v4, v0

    :cond_5
    cmp-long v3, v0, v4

    if-ltz v3, :cond_6

    .line 189
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cacheSize"

    .line 190
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIGHT_ELECTRIC_INFO"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    move-object/from16 v1, p0

    .line 191
    :try_start_d
    invoke-direct {v1, v6, v0}, Lcom/mob/commons/a/h;->a(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 193
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 194
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v3

    invoke-static {}, Lcom/mob/commons/b;->J()J

    move-result-wide v9

    mul-long v9, v9, v7

    add-long/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_6
    move-object/from16 v1, p0

    .line 196
    :goto_a
    invoke-direct {v1, v6}, Lcom/mob/commons/a/h;->b(Ljava/util/HashMap;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    goto :goto_c

    :catchall_a
    move-exception v0

    goto :goto_b

    :catchall_b
    move-exception v0

    move-object/from16 v1, p0

    .line 198
    :goto_b
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_c
    return-wide v20
.end method

.method private a(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 337
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "data"

    .line 338
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide p1

    .line 340
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "datetime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-static {}, Lcom/mob/commons/c;->a()Lcom/mob/commons/c;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/mob/commons/c;->a(JLjava/util/HashMap;)V

    return-void
.end method

.method private b(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 345
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "comm/dbs/.lecd"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    .line 351
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 352
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 353
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 354
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 356
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private h()V
    .locals 14

    .line 205
    invoke-direct {p0}, Lcom/mob/commons/a/h;->i()[Ljava/lang/Object;

    move-result-object v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 207
    array-length v3, v0

    if-ne v3, v2, :cond_0

    const/4 v3, 0x0

    .line 208
    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    :cond_0
    new-instance v3, Lcom/mob/tools/utils/SmltHelper;

    invoke-direct {v3}, Lcom/mob/tools/utils/SmltHelper;-><init>()V

    .line 211
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mob/tools/utils/SmltHelper;->checkBaseband(Landroid/content/Context;)I

    move-result v4

    .line 212
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mob/tools/utils/SmltHelper;->checkBoard(Landroid/content/Context;)I

    move-result v5

    .line 214
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mob/tools/utils/SmltHelper;->checkPlatform(Landroid/content/Context;)I

    move-result v6

    .line 216
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/mob/tools/utils/SmltHelper;->checkFlavor(Landroid/content/Context;)I

    move-result v7

    .line 218
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v3}, Lcom/mob/tools/utils/SmltHelper;->checkCgroup()I

    move-result v8

    .line 220
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/mob/tools/utils/SmltHelper;->checkBluetooth(Landroid/content/Context;)I

    move-result v9

    .line 222
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/mob/tools/utils/SmltHelper;->checkImei(Landroid/content/Context;)I

    move-result v10

    .line 224
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/mob/tools/utils/SmltHelper;->checkCommonApp(Landroid/content/Context;)I

    move-result v11

    .line 226
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v3}, Lcom/mob/tools/utils/SmltHelper;->checkCpuInfo()I

    move-result v12

    .line 228
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/mob/tools/utils/SmltHelper;->checkSensor(Landroid/content/Context;)I

    move-result v3

    .line 230
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {}, Lcom/mob/commons/i;->m()Ljava/lang/String;

    move-result-object v13

    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 235
    :cond_1
    invoke-static {v1}, Lcom/mob/commons/i;->h(Ljava/lang/String;)V

    .line 236
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_2

    .line 237
    array-length v13, v0

    if-ne v13, v2, :cond_2

    const/4 v2, 0x1

    .line 238
    aget-object v13, v0, v2

    .line 239
    instance-of v13, v13, Ljava/util/HashMap;

    if-eqz v13, :cond_2

    .line 240
    aget-object v0, v0, v2

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 243
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ckBaseband"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ckBoard"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ckPlatform"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ckFlavor"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ckCgroup"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ckBluetooth"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ckImei"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ckCommonapp"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ckCpuinfo"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ckSensor"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SIMULATOR_DET_INFO"

    .line 254
    invoke-direct {p0, v1, v0}, Lcom/mob/commons/a/h;->a(Ljava/util/HashMap;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private i()[Ljava/lang/Object;
    .locals 13

    const-string v0, "com.bluestacks.appmart"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v3

    .line 262
    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getQemuKernel()Ljava/lang/String;

    move-result-object v4

    .line 263
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 267
    :try_start_0
    new-instance v7, Ljava/io/File;

    const-string v8, "/system/lib/libc_malloc_debug_qemu.so"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    new-instance v8, Ljava/io/File;

    const-string v9, "/sys/qemu_trace"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    new-instance v9, Ljava/io/File;

    const-string v10, "/system/bin/qemu-props"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v7

    .line 272
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_1
    const/4 v7, 0x0

    .line 274
    :goto_0
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 278
    :try_start_1
    new-instance v8, Ljava/io/File;

    const-string v9, "/dev/qemu_pipe"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    new-instance v9, Ljava/io/File;

    const-string v10, "/dev/socket/qemud"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_3

    :cond_2
    const/4 v8, 0x1

    goto :goto_1

    :catchall_1
    move-exception v8

    .line 282
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_3
    const/4 v8, 0x0

    .line 284
    :goto_1
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 288
    :try_start_2
    invoke-virtual {v3, v0}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v9, :cond_5

    .line 289
    :try_start_3
    new-instance v10, Ljava/io/File;

    const-string v11, "/data/bluestacks.prop"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    :catchall_2
    move-exception v0

    goto/16 :goto_21

    :cond_5
    :goto_2
    const/4 v9, 0x1

    :goto_3
    if-nez v9, :cond_7

    .line 290
    new-instance v10, Ljava/io/File;

    const-string v11, "/mnt/prebundledapps/bluestacks.prop.orig"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v9, :cond_6

    goto :goto_4

    :cond_6
    const/4 v9, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v9, 0x1

    :goto_5
    const-string v10, "com.bluestacks.BstCommandProcessor"

    if-nez v9, :cond_9

    .line 291
    :try_start_4
    invoke-virtual {v3, v10}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_6

    :cond_8
    const/4 v9, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v9, 0x1

    :goto_7
    if-nez v9, :cond_b

    const-string v11, "com.bluestacks.help"

    .line 292
    invoke-virtual {v3, v11}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_8

    :cond_a
    const/4 v9, 0x0

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v9, 0x1

    :goto_9
    if-nez v9, :cond_d

    const-string v11, "com.bluestacks.home"

    .line 293
    invoke-virtual {v3, v11}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    goto :goto_a

    :cond_c
    const/4 v9, 0x0

    goto :goto_b

    :cond_d
    :goto_a
    const/4 v9, 0x1

    :goto_b
    if-nez v9, :cond_f

    const-string v11, "com.bluestacks.s2p"

    .line 294
    invoke-virtual {v3, v11}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_c

    :cond_e
    const/4 v9, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v9, 0x1

    :goto_d
    if-nez v9, :cond_11

    const-string v11, "com.bluestacks.searchapp"

    .line 295
    invoke-virtual {v3, v11}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    goto :goto_e

    :cond_10
    const/4 v9, 0x0

    goto :goto_f

    :cond_11
    :goto_e
    const/4 v9, 0x1

    :goto_f
    if-nez v9, :cond_13

    const-string v11, "com.bluestacks.accelerometerui"

    .line 296
    invoke-virtual {v3, v11}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    goto :goto_10

    :cond_12
    const/4 v9, 0x0

    goto :goto_11

    :cond_13
    :goto_10
    const/4 v9, 0x1

    :goto_11
    if-nez v9, :cond_15

    const-string v11, "com.bluestacks.appfinder"

    .line 297
    invoke-virtual {v3, v11}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    goto :goto_12

    :cond_14
    const/4 v9, 0x0

    goto :goto_13

    :cond_15
    :goto_12
    const/4 v9, 0x1

    :goto_13
    if-nez v9, :cond_17

    .line 298
    invoke-virtual {v3, v0}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_14

    :cond_16
    const/4 v9, 0x0

    goto :goto_15

    :cond_17
    :goto_14
    const/4 v9, 0x1

    :goto_15
    if-nez v9, :cond_19

    const-string v0, "com.bluestacks.appsettings"

    .line 299
    invoke-virtual {v3, v0}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_16

    :cond_18
    const/4 v9, 0x0

    goto :goto_17

    :cond_19
    :goto_16
    const/4 v9, 0x1

    :goto_17
    if-nez v9, :cond_1b

    .line 300
    invoke-virtual {v3, v10}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_18

    :cond_1a
    const/4 v9, 0x0

    goto :goto_19

    :cond_1b
    :goto_18
    const/4 v9, 0x1

    :goto_19
    if-nez v9, :cond_1d

    const-string v0, "com.bluestacks.bstfolder"

    .line 301
    invoke-virtual {v3, v0}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1a

    :cond_1c
    const/4 v9, 0x0

    goto :goto_1b

    :cond_1d
    :goto_1a
    const/4 v9, 0x1

    :goto_1b
    if-nez v9, :cond_1f

    const-string v0, "com.bluestacks.setup"

    .line 302
    invoke-virtual {v3, v0}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_1c

    :cond_1e
    const/4 v9, 0x0

    goto :goto_1d

    :cond_1f
    :goto_1c
    const/4 v9, 0x1

    :goto_1d
    if-nez v9, :cond_21

    const-string v0, "com.bluestacks.spotlight"

    .line 303
    invoke-virtual {v3, v0}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_1e

    :cond_20
    const/4 v9, 0x0

    goto :goto_1f

    :cond_21
    :goto_1e
    const/4 v9, 0x1

    :goto_1f
    if-nez v9, :cond_23

    const-string v0, "com.androVM.vmconfig"

    .line 304
    invoke-virtual {v3, v0}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_22

    goto :goto_20

    :cond_22
    const/4 v0, 0x0

    goto :goto_22

    :cond_23
    :goto_20
    const/4 v0, 0x1

    goto :goto_22

    :catchall_3
    move-exception v0

    const/4 v9, 0x0

    .line 306
    :goto_21
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move v0, v9

    .line 308
    :goto_22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getTTYDriversInfo()Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_25

    .line 311
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_25

    .line 312
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_24
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_25

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-eqz v11, :cond_24

    .line 313
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_24

    .line 314
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_23
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_24

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 315
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 320
    :cond_25
    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getCPUInfo()Ljava/util/HashMap;

    move-result-object v3

    .line 321
    new-instance v10, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v10}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v10, v3}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v11, "qemuKernel"

    .line 324
    invoke-virtual {v10, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "qemuFileExist"

    invoke-virtual {v10, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "qemuDevExist"

    invoke-virtual {v10, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "blueStacksFileExist"

    invoke-virtual {v10, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ttyDrivers"

    .line 328
    invoke-virtual {v10, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cpuInfo"

    .line 329
    invoke-virtual {v10, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    aput-object v10, v1, v5

    return-object v1
.end method

.method private j()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 362
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "comm/dbs/.lecd"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 369
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 370
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 371
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    invoke-virtual {p0, v0}, Lcom/mob/commons/a/h;->a(Ljava/io/Closeable;)V

    move-object v1, v2

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v2

    move-object v0, v1

    .line 373
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 375
    invoke-virtual {p0, v0}, Lcom/mob/commons/a/h;->a(Ljava/io/Closeable;)V

    :goto_1
    if-nez v1, :cond_1

    .line 378
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_1
    return-object v1

    :catchall_2
    move-exception v1

    .line 375
    invoke-virtual {p0, v0}, Lcom/mob/commons/a/h;->a(Ljava/io/Closeable;)V

    throw v1
.end method


# virtual methods
.method protected a()Ljava/io/File;
    .locals 1

    const-string v0, "comm/locks/.lesd_lock"

    .line 36
    invoke-static {v0}, Lcom/mob/commons/e;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/os/Message;)V
    .locals 9

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 51
    invoke-static {}, Lcom/mob/commons/b;->I()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    .line 53
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    .line 54
    new-instance v0, Lcom/mob/commons/a/h$1;

    invoke-direct {v0, p0}, Lcom/mob/commons/a/h$1;-><init>(Lcom/mob/commons/a/h;)V

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/DeviceHelper;->getBatteryState(Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;)V

    goto :goto_0

    .line 64
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    const-wide/16 v5, 0x3e8

    if-ne v0, v4, :cond_2

    .line 66
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/mob/commons/a/h;->a(Ljava/util/HashMap;)J

    move-result-wide v7

    cmp-long p1, v7, v2

    if-nez p1, :cond_1

    .line 68
    invoke-static {}, Lcom/mob/commons/b;->I()J

    move-result-wide v2

    mul-long v7, v2, v5

    .line 70
    :cond_1
    invoke-virtual {p0, v1, v7, v8}, Lcom/mob/commons/a/h;->a(IJ)V

    goto :goto_0

    .line 71
    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 73
    invoke-static {}, Lcom/mob/commons/b;->K()J

    move-result-wide v7

    cmp-long p1, v7, v2

    if-lez p1, :cond_3

    .line 75
    invoke-direct {p0}, Lcom/mob/commons/a/h;->h()V

    mul-long v7, v7, v5

    .line 76
    invoke-virtual {p0, v0, v7, v8}, Lcom/mob/commons/a/h;->a(IJ)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected b_()Z
    .locals 5

    .line 40
    invoke-static {}, Lcom/mob/commons/b;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    invoke-static {}, Lcom/mob/commons/b;->K()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected d()V
    .locals 1

    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0, v0}, Lcom/mob/commons/a/h;->b(I)V

    const/4 v0, 0x3

    .line 45
    invoke-virtual {p0, v0}, Lcom/mob/commons/a/h;->b(I)V

    return-void
.end method
