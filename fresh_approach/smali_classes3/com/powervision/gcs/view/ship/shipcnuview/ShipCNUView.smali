.class public Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;
.super Landroid/widget/LinearLayout;
.source "ShipCNUView.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field public static final LEVEL_C:I = 0x1

.field public static final LEVEL_N:I = 0x2

.field public static final LEVEL_U:I = 0x0

.field private static final TAG:Ljava/lang/String; = "lzqSpeed"


# instance fields
.field private mLastSpeed:I

.field rbC:Landroid/widget/RadioButton;

.field rbN:Landroid/widget/RadioButton;

.field rbU:Landroid/widget/RadioButton;

.field rg:Landroid/widget/RadioGroup;

.field private spUtils:Lcom/powervision/base/utils/SPHelperUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 42
    iput p1, p0, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;->mLastSpeed:I

    .line 52
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;->spUtils:Lcom/powervision/base/utils/SPHelperUtils;

    .line 53
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;->initViews()V

    return-void
.end method

.method private initViews()V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$layout;->view_w4_ncu:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 59
    sget v1, Lcom/powervision/gcs/R$id;->rg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;->rg:Landroid/widget/RadioGroup;

    .line 60
    sget v1, Lcom/powervision/gcs/R$id;->rb_c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;->rbC:Landroid/widget/RadioButton;

    .line 61
    sget v1, Lcom/powervision/gcs/R$id;->rb_n:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;->rbN:Landroid/widget/RadioButton;

    .line 62
    sget v1, Lcom/powervision/gcs/R$id;->rb_u:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;->rbU:Landroid/widget/RadioButton;

    .line 63
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;->rg:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 64
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;->registerListener()V

    return-void
.end method

.method private registerListener()V
    .locals 3

    .line 78
    invoke-static {}, Lcom/powervision/natives/model/ConstantSpeedModel;->get()Lcom/powervision/natives/model/ConstantSpeedModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    new-instance v2, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView$1;

    invoke-direct {v2, p0}, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView$1;-><init>(Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;)V

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/model/ConstantSpeedModel;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private switchLevel(I)V
    .locals 0

    .line 110
    invoke-static {p1}, Lcom/powervision/natives/PVSDK_W4_API;->setSpeedMode(I)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 99
    sget p1, Lcom/powervision/gcs/R$id;->rb_c:I

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 100
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;->switchLevel(I)V

    goto :goto_0

    .line 101
    :cond_0
    sget p1, Lcom/powervision/gcs/R$id;->rb_n:I

    if-ne p2, p1, :cond_1

    const/4 p1, 0x2

    .line 102
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;->switchLevel(I)V

    goto :goto_0

    .line 103
    :cond_1
    sget p1, Lcom/powervision/gcs/R$id;->rb_u:I

    if-ne p2, p1, :cond_2

    const/4 p1, 0x0

    .line 104
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;->switchLevel(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;->rbC:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;->rbN:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;->rbU:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    return-void
.end method

.method public setValue(I)V
    .locals 3

    .line 119
    iget v0, p0, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;->mLastSpeed:I

    if-ne v0, p1, :cond_0

    return-void

    .line 122
    :cond_0
    iput p1, p0, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;->mLastSpeed:I

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto/16 :goto_3

    .line 135
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;->spUtils:Lcom/powervision/base/utils/SPHelperUtils;

    sget-object v1, Lcom/powervision/gcs/config/GuideConfig;->guideResArray:Landroid/util/SparseIntArray;

    sget v2, Lcom/powervision/gcs/R$raw;->level_n:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/powervision/base/utils/SPHelperUtils;->showGuide(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 137
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {}, Lcom/powervision/gcs/config/GuideConfig;->getLevelN()Lcom/powervision/gcs/model/event/GuideEvent;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 139
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {}, Lcom/powervision/gcs/config/GuideConfig;->getCloseEvent()Lcom/powervision/gcs/model/event/GuideEvent;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 141
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;->rbN:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_3

    .line 126
    :cond_3
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;->spUtils:Lcom/powervision/base/utils/SPHelperUtils;

    sget-object v1, Lcom/powervision/gcs/config/GuideConfig;->guideResArray:Landroid/util/SparseIntArray;

    sget v2, Lcom/powervision/gcs/R$raw;->level_c:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/powervision/base/utils/SPHelperUtils;->showGuide(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 128
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {}, Lcom/powervision/gcs/config/GuideConfig;->getLevelC()Lcom/powervision/gcs/model/event/GuideEvent;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    .line 130
    :cond_4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {}, Lcom/powervision/gcs/config/GuideConfig;->getCloseEvent()Lcom/powervision/gcs/model/event/GuideEvent;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 132
    :goto_1
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;->rbC:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_3

    .line 144
    :cond_5
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;->spUtils:Lcom/powervision/base/utils/SPHelperUtils;

    sget-object v1, Lcom/powervision/gcs/config/GuideConfig;->guideResArray:Landroid/util/SparseIntArray;

    sget v2, Lcom/powervision/gcs/R$raw;->level_u_1:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/powervision/base/utils/SPHelperUtils;->showGuide(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 146
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {}, Lcom/powervision/gcs/config/GuideConfig;->getLevelU()Lcom/powervision/gcs/model/event/GuideEvent;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_2

    .line 148
    :cond_6
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {}, Lcom/powervision/gcs/config/GuideConfig;->getCloseEvent()Lcom/powervision/gcs/model/event/GuideEvent;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 150
    :goto_2
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;->rbU:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_3
    return-void
.end method
