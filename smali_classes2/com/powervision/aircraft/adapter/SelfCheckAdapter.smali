.class public Lcom/powervision/aircraft/adapter/SelfCheckAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SelfCheckAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final BATTERY_TEMP_WARN:I = 0xd

.field static final COMPASS_TYPE:I = 0x1

.field static final IMU_TYPE:I = 0x2

.field static final REMOTE_CONTROL_CUSTOM_KEY_TYPE:I = 0xb

.field static final REMOTE_CONTROL_TYPE:I = 0x9


# instance fields
.field private context:Landroid/content/Context;

.field private mHeaderView:Landroid/view/View;

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/aircraft/model/bean/SelfCheckItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/aircraft/model/bean/SelfCheckItem;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->mItemList:Ljava/util/ArrayList;

    .line 47
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/adapter/SelfCheckAdapter;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/adapter/SelfCheckAdapter;)Lcom/powervision/natives/PVSDK_AP03_API;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    return-object p0
.end method

.method static synthetic lambda$onBindViewHolder$2(Landroid/view/View;)V
    .locals 1

    .line 111
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p0

    const/16 v0, 0xb9

    invoke-virtual {p0, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    return-void
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->mHeaderView:Landroid/view/View;

    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$SelfCheckAdapter(Landroid/view/View;)V
    .locals 2

    .line 90
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->context:Landroid/content/Context;

    const-class v1, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$1$SelfCheckAdapter(Landroid/view/View;)V
    .locals 2

    .line 106
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->context:Landroid/content/Context;

    const-class v1, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 30
    check-cast p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->onBindViewHolder(Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;I)V
    .locals 6

    .line 73
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-virtual {v0}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-virtual {v1}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-ne p2, v4, :cond_4

    .line 76
    iget-object v1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-virtual {v1}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->isLargeInterference()Z

    move-result v1

    .line 77
    iget-object v4, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-virtual {v4}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->isNeedCalibration()Z

    move-result v4

    .line 78
    iget-object v5, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->calibration:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->value:Landroid/widget/TextView;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_242:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object v1, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->value:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/aircraft/R$color;->aircraft_self_check_error_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-virtual {v1}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->isError()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v4, :cond_2

    goto :goto_1

    .line 86
    :cond_2
    iget-object v1, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->value:Landroid/widget/TextView;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_243:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object v1, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->value:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 83
    :cond_3
    :goto_1
    iget-object v1, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->value:Landroid/widget/TextView;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_Check_21:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 84
    iget-object v1, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->value:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/aircraft/R$color;->aircraft_self_check_error_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    :goto_2
    iget-object v1, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->calibration:Landroid/widget/TextView;

    new-instance v2, Lcom/powervision/aircraft/adapter/-$$Lambda$SelfCheckAdapter$O93IKo714IqQ0_zGCGeEwVooII4;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/adapter/-$$Lambda$SelfCheckAdapter$O93IKo714IqQ0_zGCGeEwVooII4;-><init>(Lcom/powervision/aircraft/adapter/SelfCheckAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    :cond_4
    const/4 v4, 0x2

    if-ne p2, v4, :cond_7

    .line 95
    iget-object v1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-virtual {v1}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->isError()Z

    move-result v1

    .line 96
    iget-object v4, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-virtual {v4}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->isNeedCalibration()Z

    move-result v4

    .line 97
    iget-object v5, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->calibration:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v1, :cond_6

    .line 99
    iget-object v1, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->value:Landroid/widget/TextView;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_Check_21:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 100
    iget-object v1, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->value:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/aircraft/R$color;->aircraft_self_check_error_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 102
    :cond_6
    iget-object v1, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->value:Landroid/widget/TextView;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_243:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 103
    iget-object v1, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->value:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    :goto_4
    iget-object v1, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->calibration:Landroid/widget/TextView;

    new-instance v2, Lcom/powervision/aircraft/adapter/-$$Lambda$SelfCheckAdapter$IZVOzyXcjOaUkn8Mt-GcKrWqpYw;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/adapter/-$$Lambda$SelfCheckAdapter$IZVOzyXcjOaUkn8Mt-GcKrWqpYw;-><init>(Lcom/powervision/aircraft/adapter/SelfCheckAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    :cond_7
    const/16 v4, 0x9

    if-ne p2, v4, :cond_8

    .line 110
    iget-object v1, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->controlerMode:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-virtual {v2}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->controlerMode:Landroid/widget/TextView;

    sget-object v2, Lcom/powervision/aircraft/adapter/-$$Lambda$SelfCheckAdapter$_MLMHjDu_NEi4WKPIibVWO9g5-c;->INSTANCE:Lcom/powervision/aircraft/adapter/-$$Lambda$SelfCheckAdapter$_MLMHjDu_NEi4WKPIibVWO9g5-c;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    :cond_8
    const/16 v4, 0xb

    if-ne p2, v4, :cond_9

    .line 113
    invoke-virtual {p1}, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->initCustomKey()V

    .line 114
    iget-object v1, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->mCustomKey:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v2, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-virtual {v2}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->getCustomKey()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->setSelection(I)V

    goto :goto_7

    .line 116
    :cond_9
    iget-object v4, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-virtual {v4}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->isError()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 117
    iget-object v1, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->value:Landroid/widget/TextView;

    sget v4, Lcom/powervision/aircraft/R$string;->AP03_Check_21:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v1, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->value:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/powervision/aircraft/R$color;->aircraft_self_check_error_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 120
    :cond_a
    iget-object v4, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->value:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v1, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->value:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_5
    if-eq p2, v3, :cond_c

    const/16 v1, 0xe

    if-ne p2, v1, :cond_b

    goto :goto_6

    .line 126
    :cond_b
    iget-object v1, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->mBottomLine:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 124
    :cond_c
    :goto_6
    iget-object v1, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->mBottomLine:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :goto_7
    iget-object v1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-virtual {v1}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->isError()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 130
    iget-object v1, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->value:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/aircraft/R$color;->aircraft_self_check_error_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_d
    const/16 v1, 0xd

    if-ne p2, v1, :cond_f

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====position==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "======i======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-virtual {v2}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->isError()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adsfasdfadfadfsfdadfaf"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-virtual {p2}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->isTempWarn()Z

    move-result p2

    if-nez p2, :cond_e

    .line 135
    iget-object p2, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->value:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->aircraft_self_check_error_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    .line 137
    :cond_e
    iget-object p2, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->value:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    :cond_f
    :goto_8
    iget-object p1, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->tilte:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;
    .locals 3

    .line 59
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_self_check_adapter_normal_item:I

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    if-ne p2, v1, :cond_1

    .line 63
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_self_check_adapter_remote_control_item:I

    goto :goto_1

    :cond_1
    const/16 v1, 0xb

    if-ne p2, v1, :cond_3

    .line 65
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_self_check_adapter_remote_control_custom_key_item:I

    goto :goto_1

    .line 61
    :cond_2
    :goto_0
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_self_check_adapter_compass_item:I

    .line 67
    :cond_3
    :goto_1
    new-instance p2, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;

    iget-object v1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;-><init>(Lcom/powervision/aircraft/adapter/SelfCheckAdapter;Landroid/view/View;)V

    return-object p2
.end method
