.class public Lcom/powervision/gcs/manager/DeepManager;
.super Ljava/lang/Object;
.source "DeepManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;
    }
.end annotation


# static fields
.field private static manager:Lcom/powervision/gcs/manager/DeepManager;


# instance fields
.field HeightMax:F

.field HeightNow:F

.field LastHeight:F

.field baseRule:F

.field initFlag:Z

.field public listener:Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;

.field nowRule:F

.field nowRuleType:Z

.field nowy:F

.field toy:F


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/powervision/gcs/manager/DeepManager;->nowRule:F

    const/high16 v1, 0x42480000    # 50.0f

    .line 12
    iput v1, p0, Lcom/powervision/gcs/manager/DeepManager;->baseRule:F

    .line 16
    iput v0, p0, Lcom/powervision/gcs/manager/DeepManager;->HeightMax:F

    .line 18
    iput v0, p0, Lcom/powervision/gcs/manager/DeepManager;->HeightNow:F

    .line 20
    iput v0, p0, Lcom/powervision/gcs/manager/DeepManager;->LastHeight:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    iput v0, p0, Lcom/powervision/gcs/manager/DeepManager;->nowy:F

    .line 24
    iput v0, p0, Lcom/powervision/gcs/manager/DeepManager;->toy:F

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/powervision/gcs/manager/DeepManager;->initFlag:Z

    .line 26
    sget-boolean v0, Lcom/powervision/gcs/utils/SonarStateHelper;->isGong:Z

    iput-boolean v0, p0, Lcom/powervision/gcs/manager/DeepManager;->nowRuleType:Z

    return-void
.end method

.method public static getInstance()Lcom/powervision/gcs/manager/DeepManager;
    .locals 1

    .line 34
    sget-object v0, Lcom/powervision/gcs/manager/DeepManager;->manager:Lcom/powervision/gcs/manager/DeepManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/powervision/gcs/manager/DeepManager;

    invoke-direct {v0}, Lcom/powervision/gcs/manager/DeepManager;-><init>()V

    sput-object v0, Lcom/powervision/gcs/manager/DeepManager;->manager:Lcom/powervision/gcs/manager/DeepManager;

    .line 38
    :cond_0
    sget-object v0, Lcom/powervision/gcs/manager/DeepManager;->manager:Lcom/powervision/gcs/manager/DeepManager;

    return-object v0
.end method

.method private initTheRelations()V
    .locals 3

    .line 101
    invoke-virtual {p0}, Lcom/powervision/gcs/manager/DeepManager;->changeTheRule()V

    .line 102
    iget v0, p0, Lcom/powervision/gcs/manager/DeepManager;->nowRule:F

    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 104
    invoke-direct {p0, v1}, Lcom/powervision/gcs/manager/DeepManager;->mathManualMode(F)V

    goto :goto_0

    .line 106
    :cond_0
    iget v1, p0, Lcom/powervision/gcs/manager/DeepManager;->baseRule:F

    div-float/2addr v1, v0

    .line 107
    iput v1, p0, Lcom/powervision/gcs/manager/DeepManager;->toy:F

    const/16 v0, 0x1f4

    .line 111
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/manager/DeepManager;->startAnimation(I)V

    :goto_0
    return-void
.end method

.method private initWhileNoBottom()V
    .locals 2

    const/high16 v0, 0x41a00000    # 20.0f

    .line 87
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/manager/DeepManager;->changeTheRuleLockDeep(F)V

    .line 88
    iget v0, p0, Lcom/powervision/gcs/manager/DeepManager;->baseRule:F

    iget v1, p0, Lcom/powervision/gcs/manager/DeepManager;->nowRule:F

    div-float/2addr v0, v1

    .line 89
    iput v0, p0, Lcom/powervision/gcs/manager/DeepManager;->toy:F

    const/16 v0, 0x1f4

    .line 90
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/manager/DeepManager;->startAnimation(I)V

    return-void
.end method

.method private mathManualMode(F)V
    .locals 2

    .line 220
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/manager/DeepManager;->changeTheRuleLockDeep(F)V

    .line 222
    iget p1, p0, Lcom/powervision/gcs/manager/DeepManager;->baseRule:F

    iget v0, p0, Lcom/powervision/gcs/manager/DeepManager;->nowRule:F

    div-float/2addr p1, v0

    .line 223
    iput p1, p0, Lcom/powervision/gcs/manager/DeepManager;->toy:F

    .line 224
    iget-object v0, p0, Lcom/powervision/gcs/manager/DeepManager;->listener:Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;

    if-eqz v0, :cond_0

    const/16 v1, 0x1f4

    .line 225
    invoke-interface {v0, p1, v1}, Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;->startAnimation(FI)V

    :cond_0
    return-void
.end method

.method private mathTheAuto()V
    .locals 6

    .line 127
    iget v0, p0, Lcom/powervision/gcs/manager/DeepManager;->HeightNow:F

    iget v1, p0, Lcom/powervision/gcs/manager/DeepManager;->nowRule:F

    div-float v2, v0, v1

    const v3, 0x3f88f5c3    # 1.07f

    const/16 v4, 0x1f4

    const v5, 0x3e4ccccd    # 0.2f

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    .line 129
    iget v0, p0, Lcom/powervision/gcs/manager/DeepManager;->HeightMax:F

    mul-float v0, v0, v3

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/powervision/gcs/manager/DeepManager;->changeTheRule()V

    .line 132
    iget v0, p0, Lcom/powervision/gcs/manager/DeepManager;->baseRule:F

    iget v1, p0, Lcom/powervision/gcs/manager/DeepManager;->nowRule:F

    div-float/2addr v0, v1

    .line 133
    iput v0, p0, Lcom/powervision/gcs/manager/DeepManager;->toy:F

    .line 134
    invoke-virtual {p0, v4}, Lcom/powervision/gcs/manager/DeepManager;->startAnimation(I)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0, v1}, Lcom/powervision/gcs/manager/DeepManager;->changeTheRuleLockDeep(F)V

    .line 138
    iget v0, p0, Lcom/powervision/gcs/manager/DeepManager;->baseRule:F

    div-float/2addr v0, v1

    .line 139
    iput v0, p0, Lcom/powervision/gcs/manager/DeepManager;->toy:F

    .line 141
    invoke-virtual {p0, v4}, Lcom/powervision/gcs/manager/DeepManager;->startAnimation(I)V

    goto :goto_0

    :cond_1
    div-float/2addr v0, v1

    const v1, 0x3f59999a    # 0.85f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 150
    iget v0, p0, Lcom/powervision/gcs/manager/DeepManager;->HeightMax:F

    mul-float v0, v0, v3

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/powervision/gcs/manager/DeepManager;->changeTheRule()V

    .line 154
    iget v0, p0, Lcom/powervision/gcs/manager/DeepManager;->baseRule:F

    iget v1, p0, Lcom/powervision/gcs/manager/DeepManager;->nowRule:F

    div-float/2addr v0, v1

    .line 156
    iput v0, p0, Lcom/powervision/gcs/manager/DeepManager;->toy:F

    .line 157
    invoke-virtual {p0, v4}, Lcom/powervision/gcs/manager/DeepManager;->startAnimation(I)V

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {p0, v1}, Lcom/powervision/gcs/manager/DeepManager;->changeTheRuleLockDeep(F)V

    .line 163
    iget v0, p0, Lcom/powervision/gcs/manager/DeepManager;->nowRule:F

    div-float/2addr v0, v1

    .line 164
    iput v0, p0, Lcom/powervision/gcs/manager/DeepManager;->toy:F

    .line 165
    invoke-virtual {p0, v4}, Lcom/powervision/gcs/manager/DeepManager;->startAnimation(I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public changeTheRule()V
    .locals 3

    .line 172
    iget v0, p0, Lcom/powervision/gcs/manager/DeepManager;->HeightMax:F

    const v1, 0x3f88f5c3    # 1.07f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/powervision/gcs/manager/DeepManager;->nowRule:F

    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 174
    iput v1, p0, Lcom/powervision/gcs/manager/DeepManager;->nowRule:F

    .line 177
    :cond_0
    iget v0, p0, Lcom/powervision/gcs/manager/DeepManager;->nowRule:F

    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 178
    iput v1, p0, Lcom/powervision/gcs/manager/DeepManager;->nowRule:F

    .line 180
    :cond_1
    sget-boolean v0, Lcom/powervision/gcs/utils/SonarStateHelper;->Auto:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/powervision/gcs/manager/DeepManager;->listener:Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 181
    iget v2, p0, Lcom/powervision/gcs/manager/DeepManager;->nowRule:F

    invoke-interface {v0, v1, v2}, Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;->fishViewsetLockDeepNum(FF)V

    :cond_2
    return-void
.end method

.method public changeTheRule(FF)V
    .locals 1

    .line 187
    iput p2, p0, Lcom/powervision/gcs/manager/DeepManager;->nowRule:F

    .line 188
    iget-object v0, p0, Lcom/powervision/gcs/manager/DeepManager;->listener:Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;

    if-eqz v0, :cond_0

    .line 189
    invoke-interface {v0, p1, p2}, Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;->fishViewsetLockDeepNum(FF)V

    :cond_0
    return-void
.end method

.method changeTheRuleLockDeep(F)V
    .locals 2

    .line 118
    iput p1, p0, Lcom/powervision/gcs/manager/DeepManager;->nowRule:F

    .line 119
    sget-boolean v0, Lcom/powervision/gcs/utils/SonarStateHelper;->Auto:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/manager/DeepManager;->listener:Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 120
    invoke-interface {v0, v1, p1}, Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;->fishViewsetLockDeepNum(FF)V

    :cond_0
    return-void
.end method

.method public computeTheDeepAfterTheMath(FF)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/powervision/gcs/manager/DeepManager;->HeightMax:F

    .line 43
    iput p2, p0, Lcom/powervision/gcs/manager/DeepManager;->HeightNow:F

    .line 51
    iget-object p1, p0, Lcom/powervision/gcs/manager/DeepManager;->listener:Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;

    if-eqz p1, :cond_0

    .line 52
    invoke-interface {p1, p2}, Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;->setNowDeep(F)V

    .line 53
    iget-object p1, p0, Lcom/powervision/gcs/manager/DeepManager;->listener:Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;

    iget p2, p0, Lcom/powervision/gcs/manager/DeepManager;->HeightNow:F

    invoke-interface {p1, p2}, Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;->mapSetSonarCurrDeep(F)V

    .line 57
    :cond_0
    iget-boolean p1, p0, Lcom/powervision/gcs/manager/DeepManager;->initFlag:Z

    if-eqz p1, :cond_2

    .line 59
    iget p1, p0, Lcom/powervision/gcs/manager/DeepManager;->HeightNow:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_1

    .line 61
    invoke-direct {p0}, Lcom/powervision/gcs/manager/DeepManager;->initWhileNoBottom()V

    goto :goto_0

    .line 63
    :cond_1
    invoke-direct {p0}, Lcom/powervision/gcs/manager/DeepManager;->initTheRelations()V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/powervision/gcs/manager/DeepManager;->initFlag:Z

    goto :goto_0

    .line 68
    :cond_2
    sget-boolean p1, Lcom/powervision/gcs/utils/SonarStateHelper;->Auto:Z

    if-eqz p1, :cond_3

    .line 69
    iget p1, p0, Lcom/powervision/gcs/manager/DeepManager;->LastHeight:F

    iget p2, p0, Lcom/powervision/gcs/manager/DeepManager;->HeightNow:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_4

    .line 70
    invoke-direct {p0}, Lcom/powervision/gcs/manager/DeepManager;->mathTheAuto()V

    goto :goto_0

    .line 75
    :cond_3
    iget-object p1, p0, Lcom/powervision/gcs/manager/DeepManager;->listener:Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;

    if-eqz p1, :cond_4

    .line 76
    invoke-interface {p1}, Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;->turnToLockMode()V

    .line 80
    :cond_4
    :goto_0
    iget p1, p0, Lcom/powervision/gcs/manager/DeepManager;->HeightNow:F

    iput p1, p0, Lcom/powervision/gcs/manager/DeepManager;->LastHeight:F

    return-void
.end method

.method public computeToy()V
    .locals 2

    .line 195
    iget v0, p0, Lcom/powervision/gcs/manager/DeepManager;->baseRule:F

    iget v1, p0, Lcom/powervision/gcs/manager/DeepManager;->nowRule:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/gcs/manager/DeepManager;->toy:F

    return-void
.end method

.method public errorDeep()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/powervision/gcs/manager/DeepManager;->listener:Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;

    if-eqz v0, :cond_0

    .line 261
    invoke-interface {v0}, Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;->errorDeep()V

    :cond_0
    return-void
.end method

.method public gc()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 267
    iput v0, p0, Lcom/powervision/gcs/manager/DeepManager;->toy:F

    const/4 v0, 0x0

    .line 269
    iput v0, p0, Lcom/powervision/gcs/manager/DeepManager;->nowRule:F

    .line 274
    iput v0, p0, Lcom/powervision/gcs/manager/DeepManager;->HeightMax:F

    .line 276
    iput v0, p0, Lcom/powervision/gcs/manager/DeepManager;->HeightNow:F

    .line 278
    iput v0, p0, Lcom/powervision/gcs/manager/DeepManager;->LastHeight:F

    return-void
.end method

.method public getNowRule()F
    .locals 1

    .line 256
    iget v0, p0, Lcom/powervision/gcs/manager/DeepManager;->nowRule:F

    return v0
.end method

.method public getToy()F
    .locals 1

    .line 231
    iget v0, p0, Lcom/powervision/gcs/manager/DeepManager;->toy:F

    return v0
.end method

.method public setOnUIAboutDeepChangeLisetner(Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/powervision/gcs/manager/DeepManager;->listener:Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;

    return-void
.end method

.method public startAnimation(I)V
    .locals 2

    if-nez p1, :cond_0

    const/16 p1, 0x1f4

    .line 211
    :cond_0
    iget v0, p0, Lcom/powervision/gcs/manager/DeepManager;->toy:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/powervision/gcs/manager/DeepManager;->listener:Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;

    if-eqz v1, :cond_1

    .line 212
    invoke-interface {v1, v0, p1}, Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;->startAnimation(FI)V

    .line 214
    :cond_1
    iget p1, p0, Lcom/powervision/gcs/manager/DeepManager;->toy:F

    iput p1, p0, Lcom/powervision/gcs/manager/DeepManager;->nowy:F

    return-void
.end method

.method public turnToManualMode()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/powervision/gcs/manager/DeepManager;->listener:Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;

    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0}, Lcom/powervision/gcs/manager/DeepManager$OnUiAboutDeepChangeListener;->turnToManualMode()V

    :cond_0
    return-void
.end method
