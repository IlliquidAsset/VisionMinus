.class public Lcom/powervision/base/warning/manager/WarningManager;
.super Ljava/lang/Object;
.source "WarningManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/warning/manager/WarningManager$OnShowDialogCallback;,
        Lcom/powervision/base/warning/manager/WarningManager$OnWarningCallback;,
        Lcom/powervision/base/warning/manager/WarningManager$WarningHandler;
    }
.end annotation


# static fields
.field private static final ADD_VIEW:I = 0x2

.field private static final HIDE_TITLE:I = 0x1

.field private static final HIDE_VIEW:I = 0x0

.field private static final REMOVE_VIEW:I = 0x3


# instance fields
.field private allList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field alpha:Landroid/animation/Animator;

.field animatorSet:Landroid/animation/AnimatorSet;

.field private barView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

.field private handler:Lcom/powervision/base/warning/manager/WarningManager$WarningHandler;

.field private itemView:Landroid/view/View;

.field private mImageClose:Landroid/widget/ImageView;

.field private mImageWarn:Landroid/widget/ImageView;

.field private mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mTextContent:Lcom/powervision/base/views/NotifyMessageTextView;

.field private mTextTitle:Landroid/widget/TextView;

.field private showDialogCallback:Lcom/powervision/base/warning/manager/WarningManager$OnShowDialogCallback;

.field trans:Landroid/animation/Animator;

.field private warningCallback:Lcom/powervision/base/warning/manager/WarningManager$OnWarningCallback;

.field private warningList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/warning/HoverMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/flexbox/FlexboxLayout;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager;->context:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/powervision/base/warning/manager/WarningManager;->flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 60
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager;->warningList:Ljava/util/List;

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager;->allList:Ljava/util/List;

    .line 62
    new-instance p1, Lcom/powervision/base/warning/manager/WarningManager$WarningHandler;

    invoke-direct {p1, p0}, Lcom/powervision/base/warning/manager/WarningManager$WarningHandler;-><init>(Lcom/powervision/base/warning/manager/WarningManager;)V

    iput-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager;->handler:Lcom/powervision/base/warning/manager/WarningManager$WarningHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/base/warning/manager/WarningManager;)Lcom/google/android/flexbox/FlexboxLayout;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/base/warning/manager/WarningManager;->flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/base/warning/manager/WarningManager;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/base/warning/manager/WarningManager;->warningList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/base/warning/manager/WarningManager;)Lcom/powervision/base/warning/manager/WarningManager$OnWarningCallback;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/base/warning/manager/WarningManager;->warningCallback:Lcom/powervision/base/warning/manager/WarningManager$OnWarningCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/base/warning/manager/WarningManager;Lcom/powervision/base/warning/HoverMessage;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/powervision/base/warning/manager/WarningManager;->updateAddView(Lcom/powervision/base/warning/HoverMessage;)V

    return-void
.end method

.method static synthetic access$400(Lcom/powervision/base/warning/manager/WarningManager;Lcom/powervision/base/warning/HoverMessage;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/powervision/base/warning/manager/WarningManager;->updateRemoveView(Lcom/powervision/base/warning/HoverMessage;)V

    return-void
.end method

.method static synthetic access$500(Lcom/powervision/base/warning/manager/WarningManager;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/base/warning/manager/WarningManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/powervision/base/warning/manager/WarningManager;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/base/warning/manager/WarningManager;->allList:Ljava/util/List;

    return-object p0
.end method

.method private hideViewAnimation(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .line 67
    sget v0, Lcom/powervision/base/R$id;->msg_side_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/warning/manager/WarningManager;->barView:Landroid/view/View;

    .line 68
    sget v0, Lcom/powervision/base/R$id;->msg_item_content_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/views/NotifyMessageTextView;

    iput-object v0, p0, Lcom/powervision/base/warning/manager/WarningManager;->mTextContent:Lcom/powervision/base/views/NotifyMessageTextView;

    .line 69
    sget v0, Lcom/powervision/base/R$id;->msg_item_title_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/base/warning/manager/WarningManager;->mTextTitle:Landroid/widget/TextView;

    .line 70
    sget v0, Lcom/powervision/base/R$id;->msg_item_close_iv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/base/warning/manager/WarningManager;->mImageClose:Landroid/widget/ImageView;

    .line 71
    sget v0, Lcom/powervision/base/R$id;->msg_item_root_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/base/warning/manager/WarningManager;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 72
    sget v0, Lcom/powervision/base/R$id;->image_warn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager;->mImageWarn:Landroid/widget/ImageView;

    return-void
.end method

.method private showDialog(Lcom/powervision/base/warning/HoverMessage;)V
    .locals 2

    .line 151
    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    return-void

    .line 154
    :cond_0
    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/base/warning/manager/WarningManager;->context:Landroid/content/Context;

    sget v1, Lcom/powervision/base/R$string;->AP03_Msg_72:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 155
    iget-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager;->showDialogCallback:Lcom/powervision/base/warning/manager/WarningManager$OnShowDialogCallback;

    if-eqz p1, :cond_1

    .line 156
    invoke-interface {p1}, Lcom/powervision/base/warning/manager/WarningManager$OnShowDialogCallback;->showLowPowerDialog()V

    :cond_1
    return-void
.end method

.method private showItems(Lcom/powervision/base/warning/HoverMessage;)Z
    .locals 11

    .line 206
    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_10

    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getType()I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p1, :cond_10

    .line 209
    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/powervision/base/warning/manager/WarningManager;->allList:Ljava/util/List;

    .line 210
    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/powervision/base/warning/manager/WarningManager;->warningList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/warning/HoverMessage;

    .line 214
    invoke-virtual {v3}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    .line 219
    :cond_3
    iget-object v0, p0, Lcom/powervision/base/warning/manager/WarningManager;->context:Landroid/content/Context;

    .line 220
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/powervision/base/R$layout;->aircraft_notify_msg_adapter_list_item:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 221
    invoke-direct {p0, v0}, Lcom/powervision/base/warning/manager/WarningManager;->initView(Landroid/view/View;)V

    .line 222
    new-instance v3, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40c00000    # 6.0f

    .line 225
    invoke-static {v4}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v5

    .line 226
    invoke-static {v4}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v4

    .line 227
    invoke-virtual {v3, v5, v4, v5, v1}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->setMargins(IIII)V

    .line 229
    iget-object v4, p0, Lcom/powervision/base/warning/manager/WarningManager;->mTextContent:Lcom/powervision/base/views/NotifyMessageTextView;

    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/powervision/base/views/NotifyMessageTextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_d

    const/4 v6, 0x6

    if-ne v4, v6, :cond_4

    goto/16 :goto_3

    :cond_4
    if-ne v4, v2, :cond_5

    goto/16 :goto_4

    .line 273
    :cond_5
    iget-object v2, p0, Lcom/powervision/base/warning/manager/WarningManager;->allList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x5

    const/16 v6, 0xb

    const/4 v7, 0x2

    if-eq v4, v7, :cond_b

    const/4 v8, 0x7

    if-ne v4, v8, :cond_7

    goto :goto_1

    :cond_7
    if-eq v4, v2, :cond_a

    const/16 v8, 0x8

    if-ne v4, v8, :cond_8

    goto :goto_0

    :cond_8
    if-ne v4, v6, :cond_9

    .line 285
    iget-object v8, p0, Lcom/powervision/base/warning/manager/WarningManager;->barView:Landroid/view/View;

    iget-object v9, p0, Lcom/powervision/base/warning/manager/WarningManager;->context:Landroid/content/Context;

    sget v10, Lcom/powervision/base/R$color;->color_85d21100:I

    invoke-static {v9, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 286
    iget-object v8, p0, Lcom/powervision/base/warning/manager/WarningManager;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v9, p0, Lcom/powervision/base/warning/manager/WarningManager;->context:Landroid/content/Context;

    sget v10, Lcom/powervision/base/R$color;->color_85d21100:I

    invoke-static {v9, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    goto :goto_2

    .line 288
    :cond_9
    iget-object v8, p0, Lcom/powervision/base/warning/manager/WarningManager;->barView:Landroid/view/View;

    iget-object v9, p0, Lcom/powervision/base/warning/manager/WarningManager;->context:Landroid/content/Context;

    sget v10, Lcom/powervision/base/R$color;->color_85e87100:I

    invoke-static {v9, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 289
    iget-object v8, p0, Lcom/powervision/base/warning/manager/WarningManager;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v9, p0, Lcom/powervision/base/warning/manager/WarningManager;->context:Landroid/content/Context;

    sget v10, Lcom/powervision/base/R$color;->color_85e87100:I

    invoke-static {v9, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    goto :goto_2

    .line 281
    :cond_a
    :goto_0
    iget-object v8, p0, Lcom/powervision/base/warning/manager/WarningManager;->barView:Landroid/view/View;

    iget-object v9, p0, Lcom/powervision/base/warning/manager/WarningManager;->context:Landroid/content/Context;

    sget v10, Lcom/powervision/base/R$color;->color_ff4fa200:I

    invoke-static {v9, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 282
    iget-object v8, p0, Lcom/powervision/base/warning/manager/WarningManager;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v9, p0, Lcom/powervision/base/warning/manager/WarningManager;->context:Landroid/content/Context;

    sget v10, Lcom/powervision/base/R$color;->color_ff4fa200:I

    invoke-static {v9, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    goto :goto_2

    .line 277
    :cond_b
    :goto_1
    iget-object v8, p0, Lcom/powervision/base/warning/manager/WarningManager;->barView:Landroid/view/View;

    iget-object v9, p0, Lcom/powervision/base/warning/manager/WarningManager;->context:Landroid/content/Context;

    sget v10, Lcom/powervision/base/R$color;->color_85e87100:I

    invoke-static {v9, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 278
    iget-object v8, p0, Lcom/powervision/base/warning/manager/WarningManager;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v9, p0, Lcom/powervision/base/warning/manager/WarningManager;->context:Landroid/content/Context;

    sget v10, Lcom/powervision/base/R$color;->color_85e87100:I

    invoke-static {v9, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 293
    :goto_2
    iget-object v8, p0, Lcom/powervision/base/warning/manager/WarningManager;->mTextTitle:Landroid/widget/TextView;

    sget v9, Lcom/powervision/base/R$string;->AP03_Msg_1:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 294
    iget-object v8, p0, Lcom/powervision/base/warning/manager/WarningManager;->mImageClose:Landroid/widget/ImageView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v8, p0, Lcom/powervision/base/warning/manager/WarningManager;->mImageWarn:Landroid/widget/ImageView;

    sget v10, Lcom/powervision/base/R$mipmap;->aircraft_warning_tip:I

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 296
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    invoke-direct {p0, v0}, Lcom/powervision/base/warning/manager/WarningManager;->showViewAnimation(Landroid/view/View;)V

    .line 298
    iget-object v3, p0, Lcom/powervision/base/warning/manager/WarningManager;->warningList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v4, v6, :cond_c

    if-eq v4, v9, :cond_c

    if-eq v4, v2, :cond_c

    if-eq v4, v7, :cond_c

    .line 300
    iget-object v2, p0, Lcom/powervision/base/warning/manager/WarningManager;->allList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_c
    iget-object v2, p0, Lcom/powervision/base/warning/manager/WarningManager;->flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v2, v0}, Lcom/google/android/flexbox/FlexboxLayout;->addView(Landroid/view/View;)V

    .line 303
    new-instance v2, Lcom/powervision/base/warning/WarningAutoData;

    invoke-direct {v2, v0, p1}, Lcom/powervision/base/warning/WarningAutoData;-><init>(Landroid/view/View;Lcom/powervision/base/warning/HoverMessage;)V

    .line 304
    iget-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager;->handler:Lcom/powervision/base/warning/manager/WarningManager$WarningHandler;

    invoke-virtual {p1}, Lcom/powervision/base/warning/manager/WarningManager$WarningHandler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 305
    iput v1, p1, Landroid/os/Message;->what:I

    .line 306
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lcom/powervision/base/warning/manager/WarningManager;->handler:Lcom/powervision/base/warning/manager/WarningManager$WarningHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p1, v1, v2}, Lcom/powervision/base/warning/manager/WarningManager$WarningHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    .line 234
    :cond_d
    :goto_3
    iget-object v2, p0, Lcom/powervision/base/warning/manager/WarningManager;->allList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    return v1

    .line 240
    :cond_f
    iget-object v2, p0, Lcom/powervision/base/warning/manager/WarningManager;->barView:Landroid/view/View;

    iget-object v4, p0, Lcom/powervision/base/warning/manager/WarningManager;->context:Landroid/content/Context;

    sget v6, Lcom/powervision/base/R$color;->color_85d21100:I

    invoke-static {v4, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 241
    iget-object v2, p0, Lcom/powervision/base/warning/manager/WarningManager;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v4, p0, Lcom/powervision/base/warning/manager/WarningManager;->context:Landroid/content/Context;

    sget v6, Lcom/powervision/base/R$color;->color_85d21100:I

    invoke-static {v4, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 242
    iget-object v2, p0, Lcom/powervision/base/warning/manager/WarningManager;->mTextTitle:Landroid/widget/TextView;

    sget v4, Lcom/powervision/base/R$string;->AP03_DV_CameraSetting_57:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 243
    iget-object v2, p0, Lcom/powervision/base/warning/manager/WarningManager;->mImageClose:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    iget-object v2, p0, Lcom/powervision/base/warning/manager/WarningManager;->mImageWarn:Landroid/widget/ImageView;

    sget v4, Lcom/powervision/base/R$mipmap;->aircraft_warning_warn:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    iget-object v2, p0, Lcom/powervision/base/warning/manager/WarningManager;->mImageClose:Landroid/widget/ImageView;

    new-instance v4, Lcom/powervision/base/warning/manager/WarningManager$1;

    invoke-direct {v4, p0, p1, v0}, Lcom/powervision/base/warning/manager/WarningManager$1;-><init>(Lcom/powervision/base/warning/manager/WarningManager;Lcom/powervision/base/warning/HoverMessage;Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v2, p0, Lcom/powervision/base/warning/manager/WarningManager;->warningList:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 265
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    invoke-direct {p0, v0}, Lcom/powervision/base/warning/manager/WarningManager;->showViewAnimation(Landroid/view/View;)V

    .line 269
    iget-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager;->flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/flexbox/FlexboxLayout;->addView(Landroid/view/View;I)V

    :goto_4
    return v5

    :cond_10
    :goto_5
    return v1
.end method

.method private showTops(Lcom/powervision/base/warning/HoverMessage;)V
    .locals 3

    .line 178
    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 180
    iget-object v0, p0, Lcom/powervision/base/warning/manager/WarningManager;->warningCallback:Lcom/powervision/base/warning/manager/WarningManager$OnWarningCallback;

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v0, p1}, Lcom/powervision/base/warning/manager/WarningManager$OnWarningCallback;->showWarnOnTop(Lcom/powervision/base/warning/HoverMessage;)V

    .line 182
    iget-object v0, p0, Lcom/powervision/base/warning/manager/WarningManager;->handler:Lcom/powervision/base/warning/manager/WarningManager$WarningHandler;

    invoke-virtual {v0}, Lcom/powervision/base/warning/manager/WarningManager$WarningHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 183
    iput v1, v0, Landroid/os/Message;->what:I

    .line 184
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 185
    iget-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager;->handler:Lcom/powervision/base/warning/manager/WarningManager$WarningHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/base/warning/manager/WarningManager$WarningHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_3

    .line 188
    invoke-interface {v0, p1}, Lcom/powervision/base/warning/manager/WarningManager$OnWarningCallback;->showWarnOnTop(Lcom/powervision/base/warning/HoverMessage;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 193
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "warn 1"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/powervision/base/warning/manager/WarningManager;->warningCallback:Lcom/powervision/base/warning/manager/WarningManager$OnWarningCallback;

    if-eqz v0, :cond_3

    .line 195
    invoke-interface {v0, p1}, Lcom/powervision/base/warning/manager/WarningManager$OnWarningCallback;->showWarnOnTop(Lcom/powervision/base/warning/HoverMessage;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private showViewAnimation(Landroid/view/View;)V
    .locals 3

    .line 319
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/warning/manager/WarningManager;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 320
    fill-array-data v1, :array_0

    const-string v2, "translationX"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/base/warning/manager/WarningManager;->trans:Landroid/animation/Animator;

    new-array v1, v0, [F

    .line 321
    fill-array-data v1, :array_1

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager;->alpha:Landroid/animation/Animator;

    .line 322
    iget-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 323
    iget-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    iget-object v1, p0, Lcom/powervision/base/warning/manager/WarningManager;->trans:Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/powervision/base/warning/manager/WarningManager;->alpha:Landroid/animation/Animator;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 324
    iget-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x43fa0000    # 500.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateAddView(Lcom/powervision/base/warning/HoverMessage;)V
    .locals 1

    .line 122
    invoke-direct {p0, p1}, Lcom/powervision/base/warning/manager/WarningManager;->showDialog(Lcom/powervision/base/warning/HoverMessage;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/powervision/base/warning/manager/WarningManager;->showItems(Lcom/powervision/base/warning/HoverMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0, p1}, Lcom/powervision/base/warning/manager/WarningManager;->showTops(Lcom/powervision/base/warning/HoverMessage;)V

    :cond_0
    return-void
.end method

.method private updateRemoveView(Lcom/powervision/base/warning/HoverMessage;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 132
    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/warning/manager/WarningManager;->warningList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/warning/HoverMessage;

    .line 134
    invoke-virtual {v1}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    iget-object v2, p0, Lcom/powervision/base/warning/manager/WarningManager;->warningList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  flexboxLayout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/powervision/base/warning/manager/WarningManager;->flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v4}, Lcom/google/android/flexbox/FlexboxLayout;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 137
    iget-object v3, p0, Lcom/powervision/base/warning/manager/WarningManager;->flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v3}, Lcom/google/android/flexbox/FlexboxLayout;->getChildCount()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 138
    iget-object v3, p0, Lcom/powervision/base/warning/manager/WarningManager;->flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v3, v2}, Lcom/google/android/flexbox/FlexboxLayout;->removeViewAt(I)V

    .line 140
    :cond_2
    iget-object v2, p0, Lcom/powervision/base/warning/manager/WarningManager;->warningList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 141
    iget-object v2, p0, Lcom/powervision/base/warning/manager/WarningManager;->warningCallback:Lcom/powervision/base/warning/manager/WarningManager$OnWarningCallback;

    if-eqz v2, :cond_1

    .line 142
    invoke-interface {v2, v1}, Lcom/powervision/base/warning/manager/WarningManager$OnWarningCallback;->closeWarnOnTop(Lcom/powervision/base/warning/HoverMessage;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public addView(Lcom/powervision/base/warning/HoverMessage;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/powervision/base/warning/manager/WarningManager;->handler:Lcom/powervision/base/warning/manager/WarningManager$WarningHandler;

    invoke-virtual {v0}, Lcom/powervision/base/warning/manager/WarningManager$WarningHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 109
    iput v1, v0, Landroid/os/Message;->what:I

    .line 110
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 111
    iget-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager;->handler:Lcom/powervision/base/warning/manager/WarningManager$WarningHandler;

    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager$WarningHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public removeView(Lcom/powervision/base/warning/HoverMessage;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/powervision/base/warning/manager/WarningManager;->handler:Lcom/powervision/base/warning/manager/WarningManager$WarningHandler;

    invoke-virtual {v0}, Lcom/powervision/base/warning/manager/WarningManager$WarningHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 116
    iput v1, v0, Landroid/os/Message;->what:I

    .line 117
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 118
    iget-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager;->handler:Lcom/powervision/base/warning/manager/WarningManager$WarningHandler;

    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager$WarningHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setShowDialogCallback(Lcom/powervision/base/warning/manager/WarningManager$OnShowDialogCallback;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager;->showDialogCallback:Lcom/powervision/base/warning/manager/WarningManager$OnShowDialogCallback;

    return-void
.end method

.method public setWarningCallback(Lcom/powervision/base/warning/manager/WarningManager$OnWarningCallback;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager;->warningCallback:Lcom/powervision/base/warning/manager/WarningManager$OnWarningCallback;

    return-void
.end method
