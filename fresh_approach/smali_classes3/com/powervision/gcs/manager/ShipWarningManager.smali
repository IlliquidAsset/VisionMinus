.class public Lcom/powervision/gcs/manager/ShipWarningManager;
.super Ljava/lang/Object;
.source "ShipWarningManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/manager/ShipWarningManager$WarningHandler;
    }
.end annotation


# static fields
.field private static final DELETE_DATA:I = 0x1

.field private static final HIDE_VIEW:I

.field static commonCallBack:Lcom/powervision/opensource/CommonCallBack;


# instance fields
.field private context:Landroid/content/Context;

.field private flexboxLayout:Landroid/widget/LinearLayout;

.field private handler:Lcom/powervision/gcs/manager/ShipWarningManager$WarningHandler;

.field private warningList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/ShipWarning;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->flexboxLayout:Landroid/widget/LinearLayout;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->warningList:Ljava/util/List;

    .line 46
    new-instance p1, Lcom/powervision/gcs/manager/ShipWarningManager$WarningHandler;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/manager/ShipWarningManager$WarningHandler;-><init>(Lcom/powervision/gcs/manager/ShipWarningManager;)V

    iput-object p1, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->handler:Lcom/powervision/gcs/manager/ShipWarningManager$WarningHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/manager/ShipWarningManager;)Landroid/widget/LinearLayout;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->flexboxLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/manager/ShipWarningManager;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->warningList:Ljava/util/List;

    return-object p0
.end method

.method public static notifyHide()V
    .locals 2

    .line 55
    sget-object v0, Lcom/powervision/gcs/manager/ShipWarningManager;->commonCallBack:Lcom/powervision/opensource/CommonCallBack;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 56
    invoke-interface {v0, v1}, Lcom/powervision/opensource/CommonCallBack;->timeout([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static setCommonListener(Lcom/powervision/opensource/CommonCallBack;)V
    .locals 0

    .line 51
    sput-object p0, Lcom/powervision/gcs/manager/ShipWarningManager;->commonCallBack:Lcom/powervision/opensource/CommonCallBack;

    return-void
.end method


# virtual methods
.method public addView(I)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    new-instance p1, Lcom/powervision/gcs/model/ship/ShipWarning;

    iget-object v1, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->context:Landroid/content/Context;

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_Msg_115:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/powervision/gcs/model/ship/ShipWarning;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/manager/ShipWarningManager;->addView(Lcom/powervision/gcs/model/ship/ShipWarning;)V

    goto :goto_0

    .line 188
    :cond_1
    new-instance p1, Lcom/powervision/gcs/model/ship/ShipWarning;

    iget-object v1, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->context:Landroid/content/Context;

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_Msg_115:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/powervision/gcs/model/ship/ShipWarning;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/manager/ShipWarningManager;->addView(Lcom/powervision/gcs/model/ship/ShipWarning;)V

    goto :goto_0

    .line 185
    :cond_2
    new-instance p1, Lcom/powervision/gcs/model/ship/ShipWarning;

    iget-object v0, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->context:Landroid/content/Context;

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_Msg_83:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/powervision/gcs/model/ship/ShipWarning;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/manager/ShipWarningManager;->addView(Lcom/powervision/gcs/model/ship/ShipWarning;)V

    goto :goto_0

    .line 182
    :cond_3
    new-instance p1, Lcom/powervision/gcs/model/ship/ShipWarning;

    iget-object v0, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->context:Landroid/content/Context;

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_Msg_84:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/powervision/gcs/model/ship/ShipWarning;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/manager/ShipWarningManager;->addView(Lcom/powervision/gcs/model/ship/ShipWarning;)V

    goto :goto_0

    .line 179
    :cond_4
    new-instance p1, Lcom/powervision/gcs/model/ship/ShipWarning;

    iget-object v1, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->context:Landroid/content/Context;

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_Msg_97:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/powervision/gcs/model/ship/ShipWarning;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/manager/ShipWarningManager;->addView(Lcom/powervision/gcs/model/ship/ShipWarning;)V

    goto :goto_0

    .line 176
    :cond_5
    new-instance p1, Lcom/powervision/gcs/model/ship/ShipWarning;

    iget-object v1, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->context:Landroid/content/Context;

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_Msg_61:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/powervision/gcs/model/ship/ShipWarning;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/manager/ShipWarningManager;->addView(Lcom/powervision/gcs/model/ship/ShipWarning;)V

    :goto_0
    return-void
.end method

.method public addView(Lcom/powervision/gcs/model/ship/ShipWarning;)V
    .locals 10

    if-eqz p1, :cond_7

    .line 83
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipWarning;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->warningList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/model/ship/ShipWarning;

    .line 87
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipWarning;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/powervision/gcs/model/ship/ShipWarning;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 91
    :cond_2
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipWarning;->getType()I

    move-result v0

    .line 94
    new-instance v1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(II)V

    .line 97
    iget-object v2, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->context:Landroid/content/Context;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v2, v3}, Lcom/xiao/nicevideoplayer/NiceUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    .line 98
    iget-object v4, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->context:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/xiao/nicevideoplayer/NiceUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    .line 99
    invoke-virtual {v1, v2, v3, v2, v4}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->setMargins(IIII)V

    const-string v2, "alpha"

    const-string v3, "translationY"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v0, v6, :cond_4

    if-eq v0, v7, :cond_3

    goto/16 :goto_2

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v8, Lcom/powervision/gcs/R$layout;->ship_toast_layout:I

    invoke-virtual {v0, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 140
    sget v5, Lcom/powervision/gcs/R$id;->text:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 141
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipWarning;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v7, [F

    .line 145
    fill-array-data v5, :array_0

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v5, v7, [F

    .line 146
    fill-array-data v5, :array_1

    invoke-static {v0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v8, 0x64

    .line 147
    invoke-virtual {v1, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v5, v7, [Landroid/animation/Animator;

    aput-object v3, v5, v4

    aput-object v2, v5, v6

    .line 148
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 149
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 150
    iget-object v1, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->warningList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v1, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->flexboxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    new-instance v1, Lcom/powervision/gcs/model/ship/ShipAutoData;

    invoke-direct {v1, v0, p1}, Lcom/powervision/gcs/model/ship/ShipAutoData;-><init>(Landroid/view/View;Lcom/powervision/gcs/model/ship/ShipWarning;)V

    .line 153
    iget-object p1, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->handler:Lcom/powervision/gcs/manager/ShipWarningManager$WarningHandler;

    invoke-virtual {p1}, Lcom/powervision/gcs/manager/ShipWarningManager$WarningHandler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 154
    iput v4, p1, Landroid/os/Message;->what:I

    .line 155
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->handler:Lcom/powervision/gcs/manager/ShipWarningManager$WarningHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p1, v1, v2}, Lcom/powervision/gcs/manager/ShipWarningManager$WarningHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v8, Lcom/powervision/gcs/R$layout;->ship_warning_layout:I

    invoke-virtual {v0, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 107
    sget v5, Lcom/powervision/gcs/R$id;->ship_iv_close:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 108
    sget v8, Lcom/powervision/gcs/R$id;->text:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 109
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipWarning;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    new-instance v8, Lcom/powervision/gcs/manager/ShipWarningManager$1;

    invoke-direct {v8, p0, v0, p1}, Lcom/powervision/gcs/manager/ShipWarningManager$1;-><init>(Lcom/powervision/gcs/manager/ShipWarningManager;Landroid/view/View;Lcom/powervision/gcs/model/ship/ShipWarning;)V

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v5, 0x0

    .line 118
    :goto_0
    iget-object v8, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->warningList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_6

    .line 119
    iget-object v8, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->warningList:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/powervision/gcs/model/ship/ShipWarning;

    .line 120
    invoke-virtual {v8}, Lcom/powervision/gcs/model/ship/ShipWarning;->getType()I

    move-result v8

    if-ne v8, v7, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    .line 125
    :goto_1
    iget-object v8, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->warningList:Ljava/util/List;

    invoke-interface {v8, v5, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v7, [F

    .line 130
    fill-array-data v1, :array_2

    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v3, v7, [F

    .line 131
    fill-array-data v3, :array_3

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v8, 0x1f4

    .line 132
    invoke-virtual {p1, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v1, v3, v4

    aput-object v2, v3, v6

    .line 133
    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 134
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 136
    iget-object p1, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->flexboxLayout:Landroid/widget/LinearLayout;

    add-int/2addr v5, v6

    invoke-virtual {p1, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_7
    :goto_2
    return-void

    :array_0
    .array-data 4
        -0x3db80000    # -50.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        -0x3db80000    # -50.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public removeAllViews()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->flexboxLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 209
    iget-object v2, p0, Lcom/powervision/gcs/manager/ShipWarningManager;->flexboxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
