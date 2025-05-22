.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;
.super Ljava/lang/Object;
.source "ShipCommonControlFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RockModeLogic"
.end annotation


# instance fields
.field private circleIds:[I

.field private final context:Landroid/content/Context;

.field private imageViews:[Landroid/widget/ImageView;

.field private leftRightLeft:Z

.field private leftSet:Z

.field private leftUpDown:Z

.field private mLayoutSet:Landroid/widget/RelativeLayout;

.field private mLayoutSetImage:Landroid/widget/RelativeLayout;

.field private mTextChangeSet:Landroid/widget/TextView;

.field private mTextReset:Landroid/widget/TextView;

.field private mTextSave:Landroid/widget/TextView;

.field private resIds:[I

.field private rightSet:Z

.field private rockDouble:Landroid/widget/TextView;

.field private rockDoubleDetail:Landroid/widget/LinearLayout;

.field private rockHide:Landroid/widget/TextView;

.field private rockHideDetail:Landroid/widget/RelativeLayout;

.field rockModeChangeListener:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;

.field private rockSingle:Landroid/widget/TextView;

.field private rockSingleDetail:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 729
    sget v1, Lcom/powervision/gcs/R$id;->custom_rocker_left_up:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/powervision/gcs/R$id;->custom_rocker_left_right:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lcom/powervision/gcs/R$id;->custom_rocker_left_down:I

    const/4 v4, 0x2

    aput v1, v0, v4

    sget v1, Lcom/powervision/gcs/R$id;->custom_rocker_left_left:I

    const/4 v5, 0x3

    aput v1, v0, v5

    sget v1, Lcom/powervision/gcs/R$id;->custom_rocker_right_up:I

    const/4 v5, 0x4

    aput v1, v0, v5

    sget v1, Lcom/powervision/gcs/R$id;->custom_rocker_right_right:I

    const/4 v5, 0x5

    aput v1, v0, v5

    sget v1, Lcom/powervision/gcs/R$id;->custom_rocker_right_down:I

    const/4 v5, 0x6

    aput v1, v0, v5

    sget v1, Lcom/powervision/gcs/R$id;->custom_rocker_right_left:I

    const/4 v5, 0x7

    aput v1, v0, v5

    sget v1, Lcom/powervision/gcs/R$id;->rocker_up:I

    const/16 v5, 0x8

    aput v1, v0, v5

    sget v1, Lcom/powervision/gcs/R$id;->rocker_down:I

    const/16 v5, 0x9

    aput v1, v0, v5

    sget v1, Lcom/powervision/gcs/R$id;->rocker_left:I

    const/16 v5, 0xa

    aput v1, v0, v5

    sget v1, Lcom/powervision/gcs/R$id;->rocker_right:I

    const/16 v5, 0xb

    aput v1, v0, v5

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->resIds:[I

    new-array v0, v4, [I

    .line 732
    sget v1, Lcom/powervision/gcs/R$id;->image_custom_left:I

    aput v1, v0, v2

    sget v1, Lcom/powervision/gcs/R$id;->image_custom_right:I

    aput v1, v0, v3

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->circleIds:[I

    .line 736
    iput-boolean v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->leftUpDown:Z

    .line 738
    iput-boolean v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->leftRightLeft:Z

    .line 721
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->context:Landroid/content/Context;

    .line 722
    check-cast p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->setRockModeChangeListener(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;Landroid/view/View;)V
    .locals 0

    .line 704
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->initDragView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;Landroid/view/View;)V
    .locals 0

    .line 704
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->onBindRockModeView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;Z)Z
    .locals 0

    .line 704
    iput-boolean p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->leftUpDown:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;Z)Z
    .locals 0

    .line 704
    iput-boolean p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->leftRightLeft:Z

    return p1
.end method

.method static synthetic access$700(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;)Z
    .locals 0

    .line 704
    iget-boolean p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->leftSet:Z

    return p0
.end method

.method static synthetic access$702(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;Z)Z
    .locals 0

    .line 704
    iput-boolean p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->leftSet:Z

    return p1
.end method

.method static synthetic access$800(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;)Z
    .locals 0

    .line 704
    iget-boolean p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rightSet:Z

    return p0
.end method

.method static synthetic access$802(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;Z)Z
    .locals 0

    .line 704
    iput-boolean p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rightSet:Z

    return p1
.end method

.method static synthetic access$900(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;)[Landroid/widget/ImageView;
    .locals 0

    .line 704
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    return-object p0
.end method

.method private changeContentTitle(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;)V
    .locals 1

    .line 1142
    sget-object v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$2;->$SwitchMap$com$powervision$gcs$ui$fgt$ship$ShipCommonControlFragment$RockModeContentType:[I

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1154
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockSingle:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$color;->transparent:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1155
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockDouble:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$color;->transparent:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1156
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockHide:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$drawable;->bottom_blue_btn_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1149
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockSingle:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$color;->transparent:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1150
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockDouble:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$drawable;->bottom_blue_btn_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1151
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockHide:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$color;->transparent:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1144
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockSingle:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$drawable;->bottom_blue_btn_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1145
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockDouble:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$color;->transparent:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1146
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockHide:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$color;->transparent:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private initDragView(Landroid/view/View;)V
    .locals 4

    .line 741
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->resIds:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 742
    :goto_0
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->resIds:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 743
    aget v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 745
    iget-object v3, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aput-object v2, v3, v1

    const/16 v3, 0x8

    if-lt v1, v3, :cond_0

    .line 748
    new-instance v3, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$1;

    invoke-direct {v3, p0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 827
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->circleIds:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 828
    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 829
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 830
    new-instance v2, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;

    invoke-direct {v2, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private onBindRockModeView(Landroid/view/View;)V
    .locals 4

    .line 924
    sget v0, Lcom/powervision/gcs/R$id;->ship_rock_tv_single_rock:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockSingle:Landroid/widget/TextView;

    .line 925
    sget v0, Lcom/powervision/gcs/R$id;->ship_rock_mode_single_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 926
    sget v1, Lcom/powervision/gcs/R$id;->ship_rock_mode_single_detail:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockSingleDetail:Landroid/widget/RelativeLayout;

    .line 929
    sget v1, Lcom/powervision/gcs/R$id;->ship_settings_rock_double:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockDouble:Landroid/widget/TextView;

    .line 931
    sget v1, Lcom/powervision/gcs/R$id;->ship_rock_mode_normal_btn:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 932
    sget v2, Lcom/powervision/gcs/R$id;->ship_rock_mode_double_detail:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockDoubleDetail:Landroid/widget/LinearLayout;

    .line 935
    sget v2, Lcom/powervision/gcs/R$id;->ship_rock_mode_tv_rock_hide:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockHide:Landroid/widget/TextView;

    .line 936
    sget v2, Lcom/powervision/gcs/R$id;->ship_rock_mode_hide_btn:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 937
    sget v3, Lcom/powervision/gcs/R$id;->ship_rock_mode_hide_detail:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockHideDetail:Landroid/widget/RelativeLayout;

    .line 939
    sget v3, Lcom/powervision/gcs/R$id;->text_reset:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->mTextReset:Landroid/widget/TextView;

    .line 940
    sget v3, Lcom/powervision/gcs/R$id;->text_save:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->mTextSave:Landroid/widget/TextView;

    .line 941
    sget v3, Lcom/powervision/gcs/R$id;->text_change_set:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->mTextChangeSet:Landroid/widget/TextView;

    .line 942
    sget v3, Lcom/powervision/gcs/R$id;->layout_set:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->mLayoutSet:Landroid/widget/RelativeLayout;

    .line 943
    sget v3, Lcom/powervision/gcs/R$id;->layout_set_image:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->mLayoutSetImage:Landroid/widget/RelativeLayout;

    .line 945
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 946
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 947
    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 949
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->mTextSave:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 950
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->mTextReset:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 951
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->mTextChangeSet:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 953
    invoke-static {}, Lcom/powervision/gcs/utils/SpStore;->getShipRockerMode()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    .line 955
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockSingleDetail:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 956
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockDoubleDetail:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 957
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockHideDetail:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 958
    sget-object p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;->HIDE:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;

    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->changeContentTitle(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;)V

    .line 959
    invoke-static {v0}, Lcom/powervision/gcs/utils/SpStore;->setShipCustomMode(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    if-ne p1, v2, :cond_1

    .line 961
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockSingleDetail:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 962
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockDoubleDetail:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 963
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockHideDetail:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 964
    sget-object p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;->NORMAL:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;

    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->changeContentTitle(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;)V

    .line 965
    invoke-static {v0}, Lcom/powervision/gcs/utils/SpStore;->setShipCustomMode(I)V

    goto :goto_0

    .line 967
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockSingleDetail:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 968
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockDoubleDetail:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 969
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockHideDetail:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 970
    sget-object p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;->CUSTOM:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;

    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->changeContentTitle(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;)V

    .line 971
    invoke-static {}, Lcom/powervision/gcs/utils/SpStore;->getShipCustomMode()I

    move-result p1

    .line 972
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->setCustomMode(I)V

    :goto_0
    return-void
.end method

.method private onSelectedCustomContent()V
    .locals 3

    .line 1111
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockSingleDetail:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1112
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockDoubleDetail:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1113
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockHideDetail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1114
    sget-object v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;->CUSTOM:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;

    invoke-direct {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->changeContentTitle(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;)V

    .line 1115
    invoke-static {}, Lcom/powervision/gcs/utils/SpStore;->getShipCustomMode()I

    move-result v0

    .line 1117
    invoke-direct {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->setCustomMode(I)V

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    .line 1119
    invoke-static {v1}, Lcom/powervision/gcs/utils/SpStore;->setShipRockerMode(I)V

    .line 1120
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockModeChangeListener:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;

    invoke-interface {v1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;->rockMode(I)V

    .line 1121
    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Msg_12:I

    invoke-static {v0}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    :cond_0
    return-void
.end method

.method private onSelectedHideContent()V
    .locals 2

    .line 1127
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockSingleDetail:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1128
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockDoubleDetail:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1129
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockHideDetail:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1130
    sget-object v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;->HIDE:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;

    invoke-direct {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->changeContentTitle(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;)V

    .line 1132
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockModeChangeListener:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;->rockMode(I)V

    .line 1133
    invoke-static {v1}, Lcom/powervision/gcs/utils/SpStore;->setShipRockerMode(I)V

    return-void
.end method

.method private onSelectedNormalContent()V
    .locals 2

    .line 1100
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockSingleDetail:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1101
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockDoubleDetail:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1102
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockHideDetail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1103
    sget-object v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;->NORMAL:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;

    invoke-direct {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->changeContentTitle(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;)V

    .line 1105
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockModeChangeListener:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;->rockMode(I)V

    .line 1106
    invoke-static {v1}, Lcom/powervision/gcs/utils/SpStore;->setShipRockerMode(I)V

    return-void
.end method

.method private resetCustomMode()V
    .locals 5

    .line 899
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 902
    :cond_0
    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v0, :cond_2

    if-ge v2, v3, :cond_1

    .line 905
    iget-object v3, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v2

    sget v4, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v2, 0xc

    if-ne v0, v2, :cond_3

    .line 909
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    sget v2, Lcom/powervision/gcs/R$mipmap;->rocker_up:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 910
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    const/16 v2, 0x9

    aget-object v0, v0, v2

    sget v2, Lcom/powervision/gcs/R$mipmap;->rocker_down:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 911
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    sget v2, Lcom/powervision/gcs/R$mipmap;->rocker_left:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 912
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    sget v2, Lcom/powervision/gcs/R$mipmap;->rocker_right:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 914
    :cond_3
    iput-boolean v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->leftSet:Z

    .line 915
    iput-boolean v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rightSet:Z

    .line 916
    iput-boolean v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->leftUpDown:Z

    .line 917
    iput-boolean v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->leftRightLeft:Z

    return-void
.end method

.method private saveCustomMode()V
    .locals 2

    .line 1073
    iget-boolean v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->leftSet:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rightSet:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x7

    .line 1077
    invoke-static {v0}, Lcom/powervision/gcs/utils/SpStore;->setShipRockerMode(I)V

    .line 1078
    iget-boolean v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->leftUpDown:Z

    if-eqz v0, :cond_2

    .line 1079
    iget-boolean v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->leftRightLeft:Z

    if-eqz v0, :cond_1

    .line 1080
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockModeChangeListener:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;->rockMode(I)V

    .line 1081
    invoke-static {v1}, Lcom/powervision/gcs/utils/SpStore;->setShipCustomMode(I)V

    goto :goto_0

    .line 1083
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockModeChangeListener:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;->rockMode(I)V

    .line 1084
    invoke-static {v1}, Lcom/powervision/gcs/utils/SpStore;->setShipCustomMode(I)V

    goto :goto_0

    .line 1087
    :cond_2
    iget-boolean v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->leftRightLeft:Z

    if-eqz v0, :cond_3

    .line 1088
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockModeChangeListener:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;->rockMode(I)V

    .line 1089
    invoke-static {v1}, Lcom/powervision/gcs/utils/SpStore;->setShipCustomMode(I)V

    goto :goto_0

    .line 1091
    :cond_3
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockModeChangeListener:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;->rockMode(I)V

    .line 1092
    invoke-static {v1}, Lcom/powervision/gcs/utils/SpStore;->setShipCustomMode(I)V

    .line 1095
    :goto_0
    sget v0, Lcom/powervision/gcs/R$string;->PVW4_AI_43:I

    invoke-static {v0}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    return-void

    .line 1074
    :cond_4
    :goto_1
    sget v0, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_135:I

    invoke-static {v0}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    return-void
.end method

.method private setCustomMode(I)V
    .locals 9

    .line 983
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 984
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    const/16 v2, 0x9

    aget-object v0, v0, v2

    sget v2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 985
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    sget v2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 986
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    sget v2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 987
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->mTextChangeSet:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 988
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->mLayoutSet:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 989
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->mLayoutSetImage:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 992
    iput-boolean v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rightSet:Z

    .line 993
    iput-boolean v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->leftSet:Z

    if-nez p1, :cond_0

    .line 995
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->resetCustomMode()V

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x4

    if-ne p1, v7, :cond_1

    .line 997
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockModeChangeListener:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;

    invoke-interface {p1, v7}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;->rockMode(I)V

    .line 998
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v7

    sget v7, Lcom/powervision/gcs/R$mipmap;->rocker_up:I

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 999
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v4

    sget v4, Lcom/powervision/gcs/R$mipmap;->rocker_right:I

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1000
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v3

    sget v3, Lcom/powervision/gcs/R$mipmap;->rocker_down:I

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1001
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v1

    sget v1, Lcom/powervision/gcs/R$mipmap;->rocker_left:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1002
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v2

    sget v1, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1003
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v0

    sget v0, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1004
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v5

    sget v0, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1005
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v6

    sget v0, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1006
    iput-boolean v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->leftRightLeft:Z

    .line 1007
    iput-boolean v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->leftUpDown:Z

    goto/16 :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    .line 1009
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockModeChangeListener:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;

    invoke-interface {p1, v6}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;->rockMode(I)V

    .line 1010
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v2

    sget v2, Lcom/powervision/gcs/R$mipmap;->rocker_up:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1011
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v0

    sget v2, Lcom/powervision/gcs/R$mipmap;->rocker_right:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1012
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v5

    sget v2, Lcom/powervision/gcs/R$mipmap;->rocker_down:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1013
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v6

    sget v2, Lcom/powervision/gcs/R$mipmap;->rocker_left:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1014
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v7

    sget v2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1015
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v4

    sget v2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1016
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v3

    sget v2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1017
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v1

    sget v1, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1018
    iput-boolean v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->leftRightLeft:Z

    .line 1019
    iput-boolean v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->leftUpDown:Z

    goto/16 :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    .line 1021
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockModeChangeListener:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;

    invoke-interface {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;->rockMode(I)V

    .line 1022
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v2

    sget v8, Lcom/powervision/gcs/R$mipmap;->rocker_up:I

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1023
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v5

    sget v5, Lcom/powervision/gcs/R$mipmap;->rocker_down:I

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1024
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v4

    sget v4, Lcom/powervision/gcs/R$mipmap;->rocker_right:I

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1025
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v1

    sget v1, Lcom/powervision/gcs/R$mipmap;->rocker_left:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1026
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v0

    sget v1, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1027
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v6

    sget v1, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1028
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v7

    sget v1, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1029
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v3

    sget v1, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1030
    iput-boolean v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->leftUpDown:Z

    .line 1031
    iput-boolean v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->leftRightLeft:Z

    goto :goto_0

    :cond_3
    if-ne p1, v5, :cond_4

    .line 1033
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockModeChangeListener:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;

    invoke-interface {p1, v5}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;->rockMode(I)V

    .line 1034
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v0

    sget v8, Lcom/powervision/gcs/R$mipmap;->rocker_right:I

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1035
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v6

    sget v6, Lcom/powervision/gcs/R$mipmap;->rocker_left:I

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1036
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v7

    sget v6, Lcom/powervision/gcs/R$mipmap;->rocker_up:I

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1037
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v3

    sget v3, Lcom/powervision/gcs/R$mipmap;->rocker_down:I

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1038
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v2

    sget v3, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1039
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v5

    sget v3, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1040
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v4

    sget v3, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1041
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->imageViews:[Landroid/widget/ImageView;

    aget-object p1, p1, v1

    sget v1, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1042
    iput-boolean v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->leftUpDown:Z

    .line 1043
    iput-boolean v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->leftRightLeft:Z

    :cond_4
    :goto_0
    return-void
.end method

.method private setRockModeChangeListener(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;)V
    .locals 0

    .line 726
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->rockModeChangeListener:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeChangeListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1049
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 1050
    sget v0, Lcom/powervision/gcs/R$id;->ship_rock_mode_single_btn:I

    if-ne p1, v0, :cond_0

    .line 1051
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_Msg_12:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    .line 1052
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->onSelectedNormalContent()V

    goto :goto_0

    .line 1053
    :cond_0
    sget v0, Lcom/powervision/gcs/R$id;->ship_rock_mode_normal_btn:I

    if-ne p1, v0, :cond_1

    .line 1054
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->onSelectedCustomContent()V

    goto :goto_0

    .line 1055
    :cond_1
    sget v0, Lcom/powervision/gcs/R$id;->ship_rock_mode_hide_btn:I

    if-ne p1, v0, :cond_2

    .line 1056
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->onSelectedHideContent()V

    .line 1057
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_Msg_12:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    goto :goto_0

    .line 1058
    :cond_2
    sget v0, Lcom/powervision/gcs/R$id;->text_reset:I

    if-ne p1, v0, :cond_3

    .line 1059
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->resetCustomMode()V

    goto :goto_0

    .line 1060
    :cond_3
    sget v0, Lcom/powervision/gcs/R$id;->text_save:I

    if-ne p1, v0, :cond_4

    .line 1061
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->saveCustomMode()V

    goto :goto_0

    .line 1062
    :cond_4
    sget v0, Lcom/powervision/gcs/R$id;->text_change_set:I

    if-ne p1, v0, :cond_5

    .line 1063
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->mTextChangeSet:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1064
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->mLayoutSet:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1065
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->mLayoutSetImage:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method
