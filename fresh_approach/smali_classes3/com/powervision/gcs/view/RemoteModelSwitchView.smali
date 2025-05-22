.class public Lcom/powervision/gcs/view/RemoteModelSwitchView;
.super Landroid/widget/RelativeLayout;
.source "RemoteModelSwitchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/RemoteModelSwitchView$OnRemoteModelInterface;,
        Lcom/powervision/gcs/view/RemoteModelSwitchView$RockerTouchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteModelSwitchView"


# instance fields
.field private final imageViews:[Landroid/widget/ImageView;

.field private iv_rocker_bottom_arrow:Landroid/widget/ImageView;

.field private iv_rocker_left_arrow:Landroid/widget/ImageView;

.field private iv_rocker_left_down:Landroid/widget/ImageView;

.field private iv_rocker_left_left:Landroid/widget/ImageView;

.field private iv_rocker_left_right:Landroid/widget/ImageView;

.field private iv_rocker_left_up:Landroid/widget/ImageView;

.field private iv_rocker_right_arrow:Landroid/widget/ImageView;

.field private iv_rocker_right_down:Landroid/widget/ImageView;

.field private iv_rocker_right_left:Landroid/widget/ImageView;

.field private iv_rocker_right_right:Landroid/widget/ImageView;

.field private iv_rocker_right_up:Landroid/widget/ImageView;

.field private iv_rocker_up_arrow:Landroid/widget/ImageView;

.field private leftRightSet:Z

.field private leftRight_LeftRocker:Z

.field private onArrowDragListener:Landroid/view/View$OnDragListener;

.field private onRemoteModelInterface:Lcom/powervision/gcs/view/RemoteModelSwitchView$OnRemoteModelInterface;

.field private rl_rocker_left:Landroid/widget/RelativeLayout;

.field private rl_rocker_left_and_right:Landroid/widget/RelativeLayout;

.field private rl_rocker_right:Landroid/widget/RelativeLayout;

.field private rl_rocker_set_btn:Landroid/widget/RelativeLayout;

.field private rl_rocker_up_and_down:Landroid/widget/RelativeLayout;

.field private topBottom_leftRocker:Z

.field private tv_change_set:Landroid/widget/TextView;

.field private tv_rocker_reset:Landroid/widget/TextView;

.field private tv_rocker_save:Landroid/widget/TextView;

.field private upDownSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x8

    new-array p1, p1, [Landroid/widget/ImageView;

    .line 26
    iput-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->imageViews:[Landroid/widget/ImageView;

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->topBottom_leftRocker:Z

    .line 54
    iput-boolean p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->leftRight_LeftRocker:Z

    .line 138
    new-instance p1, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;-><init>(Lcom/powervision/gcs/view/RemoteModelSwitchView;)V

    iput-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->onArrowDragListener:Landroid/view/View$OnDragListener;

    .line 66
    invoke-direct {p0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/view/RemoteModelSwitchView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->rl_rocker_left:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/view/RemoteModelSwitchView;)[Landroid/widget/ImageView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->imageViews:[Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/powervision/gcs/view/RemoteModelSwitchView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->rl_rocker_right:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/view/RemoteModelSwitchView;)Landroid/widget/ImageView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_up_arrow:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/gcs/view/RemoteModelSwitchView;)Landroid/widget/ImageView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_bottom_arrow:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/gcs/view/RemoteModelSwitchView;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->upDownSet:Z

    return p0
.end method

.method static synthetic access$402(Lcom/powervision/gcs/view/RemoteModelSwitchView;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->upDownSet:Z

    return p1
.end method

.method static synthetic access$502(Lcom/powervision/gcs/view/RemoteModelSwitchView;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->topBottom_leftRocker:Z

    return p1
.end method

.method static synthetic access$600(Lcom/powervision/gcs/view/RemoteModelSwitchView;)Landroid/widget/ImageView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_left_arrow:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/powervision/gcs/view/RemoteModelSwitchView;)Landroid/widget/ImageView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_right_arrow:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/powervision/gcs/view/RemoteModelSwitchView;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->leftRightSet:Z

    return p0
.end method

.method static synthetic access$802(Lcom/powervision/gcs/view/RemoteModelSwitchView;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->leftRightSet:Z

    return p1
.end method

.method static synthetic access$902(Lcom/powervision/gcs/view/RemoteModelSwitchView;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->leftRight_LeftRocker:Z

    return p1
.end method

.method private init()V
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$layout;->view_remote_model_switch:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 72
    invoke-direct {p0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->initViews()V

    .line 73
    invoke-direct {p0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->initData()V

    .line 74
    invoke-direct {p0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->initListener()V

    return-void
.end method

.method private initData()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->rl_rocker_up_and_down:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->rl_rocker_left_and_right:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->imageViews:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_left_up:Landroid/widget/ImageView;

    aput-object v3, v0, v1

    .line 107
    iget-object v1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_left_right:Landroid/widget/ImageView;

    aput-object v1, v0, v2

    .line 108
    iget-object v1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_left_down:Landroid/widget/ImageView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 109
    iget-object v1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_left_left:Landroid/widget/ImageView;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 111
    iget-object v1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_right_up:Landroid/widget/ImageView;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 112
    iget-object v1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_right_right:Landroid/widget/ImageView;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 113
    iget-object v1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_right_down:Landroid/widget/ImageView;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 114
    iget-object v1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_right_left:Landroid/widget/ImageView;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-void
.end method

.method private initListener()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->rl_rocker_left:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->onArrowDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 120
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->rl_rocker_right:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->onArrowDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 122
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->rl_rocker_up_and_down:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/powervision/gcs/view/RemoteModelSwitchView$RockerTouchListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/powervision/gcs/view/RemoteModelSwitchView$RockerTouchListener;-><init>(Lcom/powervision/gcs/view/RemoteModelSwitchView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 123
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->rl_rocker_left_and_right:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/powervision/gcs/view/RemoteModelSwitchView$RockerTouchListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/powervision/gcs/view/RemoteModelSwitchView$RockerTouchListener;-><init>(Lcom/powervision/gcs/view/RemoteModelSwitchView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 125
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->tv_rocker_reset:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/view/-$$Lambda$RemoteModelSwitchView$CY1RQx528GgTnS7Jrsr9ZJn-eiI;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/-$$Lambda$RemoteModelSwitchView$CY1RQx528GgTnS7Jrsr9ZJn-eiI;-><init>(Lcom/powervision/gcs/view/RemoteModelSwitchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->tv_rocker_save:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/view/-$$Lambda$RemoteModelSwitchView$T0p_VxWmCfNLVj1An3cJlRkoGzU;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/-$$Lambda$RemoteModelSwitchView$T0p_VxWmCfNLVj1An3cJlRkoGzU;-><init>(Lcom/powervision/gcs/view/RemoteModelSwitchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->tv_change_set:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/view/-$$Lambda$RemoteModelSwitchView$f_xHDzG75L-JFdEGnnxxDezx-rA;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/-$$Lambda$RemoteModelSwitchView$f_xHDzG75L-JFdEGnnxxDezx-rA;-><init>(Lcom/powervision/gcs/view/RemoteModelSwitchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViews()V
    .locals 1

    .line 79
    sget v0, Lcom/powervision/gcs/R$id;->rl_rocker_left:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->rl_rocker_left:Landroid/widget/RelativeLayout;

    .line 80
    sget v0, Lcom/powervision/gcs/R$id;->iv_rocker_left_down:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_left_down:Landroid/widget/ImageView;

    .line 81
    sget v0, Lcom/powervision/gcs/R$id;->iv_rocker_left_up:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_left_up:Landroid/widget/ImageView;

    .line 82
    sget v0, Lcom/powervision/gcs/R$id;->iv_rocker_left_left:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_left_left:Landroid/widget/ImageView;

    .line 83
    sget v0, Lcom/powervision/gcs/R$id;->iv_rocker_left_right:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_left_right:Landroid/widget/ImageView;

    .line 84
    sget v0, Lcom/powervision/gcs/R$id;->rl_rocker_right:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->rl_rocker_right:Landroid/widget/RelativeLayout;

    .line 85
    sget v0, Lcom/powervision/gcs/R$id;->iv_rocker_right_down:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_right_down:Landroid/widget/ImageView;

    .line 86
    sget v0, Lcom/powervision/gcs/R$id;->iv_rocker_right_up:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_right_up:Landroid/widget/ImageView;

    .line 87
    sget v0, Lcom/powervision/gcs/R$id;->iv_rocker_right_left:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_right_left:Landroid/widget/ImageView;

    .line 88
    sget v0, Lcom/powervision/gcs/R$id;->iv_rocker_right_right:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_right_right:Landroid/widget/ImageView;

    .line 90
    sget v0, Lcom/powervision/gcs/R$id;->rl_rocker_up_and_down:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->rl_rocker_up_and_down:Landroid/widget/RelativeLayout;

    .line 91
    sget v0, Lcom/powervision/gcs/R$id;->iv_rocker_up_arrow:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_up_arrow:Landroid/widget/ImageView;

    .line 92
    sget v0, Lcom/powervision/gcs/R$id;->iv_rocker_bottom_arrow:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_bottom_arrow:Landroid/widget/ImageView;

    .line 93
    sget v0, Lcom/powervision/gcs/R$id;->rl_rocker_left_and_right:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->rl_rocker_left_and_right:Landroid/widget/RelativeLayout;

    .line 94
    sget v0, Lcom/powervision/gcs/R$id;->iv_rocker_left_arrow:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_left_arrow:Landroid/widget/ImageView;

    .line 95
    sget v0, Lcom/powervision/gcs/R$id;->iv_rocker_right_arrow:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_right_arrow:Landroid/widget/ImageView;

    .line 96
    sget v0, Lcom/powervision/gcs/R$id;->rl_rocker_set_btn:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->rl_rocker_set_btn:Landroid/widget/RelativeLayout;

    .line 97
    sget v0, Lcom/powervision/gcs/R$id;->tv_rocker_reset:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->tv_rocker_reset:Landroid/widget/TextView;

    .line 98
    sget v0, Lcom/powervision/gcs/R$id;->tv_rocker_save:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->tv_rocker_save:Landroid/widget/TextView;

    .line 99
    sget v0, Lcom/powervision/gcs/R$id;->tv_change_set:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->tv_change_set:Landroid/widget/TextView;

    return-void
.end method

.method private save()V
    .locals 2

    .line 253
    iget-boolean v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->upDownSet:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->leftRightSet:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->onRemoteModelInterface:Lcom/powervision/gcs/view/RemoteModelSwitchView$OnRemoteModelInterface;

    if-eqz v0, :cond_4

    .line 257
    iget-boolean v1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->topBottom_leftRocker:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->leftRight_LeftRocker:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 258
    invoke-interface {v0, v1}, Lcom/powervision/gcs/view/RemoteModelSwitchView$OnRemoteModelInterface;->onSaveClickListener(I)V

    .line 260
    :cond_1
    iget-boolean v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->topBottom_leftRocker:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->leftRight_LeftRocker:Z

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->onRemoteModelInterface:Lcom/powervision/gcs/view/RemoteModelSwitchView$OnRemoteModelInterface;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/powervision/gcs/view/RemoteModelSwitchView$OnRemoteModelInterface;->onSaveClickListener(I)V

    .line 263
    :cond_2
    iget-boolean v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->topBottom_leftRocker:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->leftRight_LeftRocker:Z

    if-nez v0, :cond_3

    .line 264
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->onRemoteModelInterface:Lcom/powervision/gcs/view/RemoteModelSwitchView$OnRemoteModelInterface;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/powervision/gcs/view/RemoteModelSwitchView$OnRemoteModelInterface;->onSaveClickListener(I)V

    .line 266
    :cond_3
    iget-boolean v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->topBottom_leftRocker:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->leftRight_LeftRocker:Z

    if-nez v0, :cond_4

    .line 267
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->onRemoteModelInterface:Lcom/powervision/gcs/view/RemoteModelSwitchView$OnRemoteModelInterface;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/powervision/gcs/view/RemoteModelSwitchView$OnRemoteModelInterface;->onSaveClickListener(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private set()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->rl_rocker_up_and_down:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->rl_rocker_left_and_right:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->rl_rocker_set_btn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->tv_change_set:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getOnRemoteModelInterface()Lcom/powervision/gcs/view/RemoteModelSwitchView$OnRemoteModelInterface;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->onRemoteModelInterface:Lcom/powervision/gcs/view/RemoteModelSwitchView$OnRemoteModelInterface;

    return-object v0
.end method

.method public synthetic lambda$initListener$0$RemoteModelSwitchView(Landroid/view/View;)V
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->reset()V

    return-void
.end method

.method public synthetic lambda$initListener$1$RemoteModelSwitchView(Landroid/view/View;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->save()V

    return-void
.end method

.method public synthetic lambda$initListener$2$RemoteModelSwitchView(Landroid/view/View;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->set()V

    return-void
.end method

.method public reset()V
    .locals 6

    .line 233
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->imageViews:[Landroid/widget/ImageView;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 234
    sget v5, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 237
    :cond_0
    iput-boolean v2, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->upDownSet:Z

    .line 238
    iput-boolean v2, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->leftRightSet:Z

    .line 239
    iput-boolean v2, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->topBottom_leftRocker:Z

    .line 240
    iput-boolean v2, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->leftRight_LeftRocker:Z

    .line 241
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_up_arrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->rocker_up:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_bottom_arrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->rocker_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_left_arrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->rocker_left:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_right_arrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->rocker_right:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setMode1UI()V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->imageViews:[Landroid/widget/ImageView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget v1, Lcom/powervision/gcs/R$mipmap;->rocker_up:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->imageViews:[Landroid/widget/ImageView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->rocker_right:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 289
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->imageViews:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    sget v2, Lcom/powervision/gcs/R$mipmap;->rocker_down:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 290
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->imageViews:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    sget v2, Lcom/powervision/gcs/R$mipmap;->rocker_left:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 291
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_up_arrow:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 292
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_bottom_arrow:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 293
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_left_arrow:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_right_arrow:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 295
    iput-boolean v1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->upDownSet:Z

    .line 296
    iput-boolean v1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->leftRightSet:Z

    .line 297
    iput-boolean v1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->topBottom_leftRocker:Z

    .line 298
    iput-boolean v1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->leftRight_LeftRocker:Z

    return-void
.end method

.method public setMode2UI()V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->imageViews:[Landroid/widget/ImageView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->rocker_right:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 303
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->imageViews:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    sget v2, Lcom/powervision/gcs/R$mipmap;->rocker_left:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->imageViews:[Landroid/widget/ImageView;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    sget v2, Lcom/powervision/gcs/R$mipmap;->rocker_up:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 305
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->imageViews:[Landroid/widget/ImageView;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    sget v2, Lcom/powervision/gcs/R$mipmap;->rocker_down:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 306
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_up_arrow:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_bottom_arrow:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 308
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_left_arrow:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 309
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_right_arrow:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 310
    iput-boolean v1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->upDownSet:Z

    .line 311
    iput-boolean v1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->leftRightSet:Z

    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->topBottom_leftRocker:Z

    .line 313
    iput-boolean v1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->leftRight_LeftRocker:Z

    return-void
.end method

.method public setMode3UI()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->imageViews:[Landroid/widget/ImageView;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    sget v1, Lcom/powervision/gcs/R$mipmap;->rocker_up:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->imageViews:[Landroid/widget/ImageView;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    sget v1, Lcom/powervision/gcs/R$mipmap;->rocker_right:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->imageViews:[Landroid/widget/ImageView;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    sget v1, Lcom/powervision/gcs/R$mipmap;->rocker_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 320
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->imageViews:[Landroid/widget/ImageView;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    sget v1, Lcom/powervision/gcs/R$mipmap;->rocker_left:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 321
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_up_arrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 322
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_bottom_arrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 323
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_left_arrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 324
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_right_arrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->upDownSet:Z

    .line 326
    iput-boolean v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->leftRightSet:Z

    const/4 v0, 0x0

    .line 327
    iput-boolean v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->topBottom_leftRocker:Z

    .line 328
    iput-boolean v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->leftRight_LeftRocker:Z

    return-void
.end method

.method public setMode4UI()V
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->imageViews:[Landroid/widget/ImageView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->rocker_up:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 333
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->imageViews:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    sget v2, Lcom/powervision/gcs/R$mipmap;->rocker_down:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 334
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->imageViews:[Landroid/widget/ImageView;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    sget v2, Lcom/powervision/gcs/R$mipmap;->rocker_right:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->imageViews:[Landroid/widget/ImageView;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    sget v2, Lcom/powervision/gcs/R$mipmap;->rocker_left:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 336
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_up_arrow:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 337
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_bottom_arrow:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 338
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_left_arrow:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 339
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->iv_rocker_right_arrow:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x1

    .line 340
    iput-boolean v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->upDownSet:Z

    .line 341
    iput-boolean v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->leftRightSet:Z

    .line 342
    iput-boolean v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->topBottom_leftRocker:Z

    .line 343
    iput-boolean v1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->leftRight_LeftRocker:Z

    return-void
.end method

.method public setOnRemoteModelInterface(Lcom/powervision/gcs/view/RemoteModelSwitchView$OnRemoteModelInterface;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView;->onRemoteModelInterface:Lcom/powervision/gcs/view/RemoteModelSwitchView$OnRemoteModelInterface;

    return-void
.end method
