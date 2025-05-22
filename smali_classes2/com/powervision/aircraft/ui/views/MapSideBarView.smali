.class public Lcom/powervision/aircraft/ui/views/MapSideBarView;
.super Landroid/widget/LinearLayout;
.source "MapSideBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/views/MapSideBarView$SideBarItemClickListener;
    }
.end annotation


# instance fields
.field private isMapLocked:Z

.field private mAutoLockIcon:Landroid/widget/ImageView;

.field private mLocationIcon:Landroid/widget/ImageView;

.field private mShowIcon:Landroid/widget/ImageView;

.field private mSideBarItemClickListener:Lcom/powervision/aircraft/ui/views/MapSideBarView$SideBarItemClickListener;

.field private mSwitchIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->isMapLocked:Z

    .line 23
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/MapSideBarView;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 19
    iput-boolean p2, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->isMapLocked:Z

    .line 28
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/MapSideBarView;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 19
    iput-boolean p2, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->isMapLocked:Z

    .line 33
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/MapSideBarView;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 19
    iput-boolean p2, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->isMapLocked:Z

    .line 38
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/MapSideBarView;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1

    .line 43
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_find_aircraft_side_bar:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 44
    sget v0, Lcom/powervision/aircraft/R$id;->side_bar_show_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->mShowIcon:Landroid/widget/ImageView;

    .line 45
    sget v0, Lcom/powervision/aircraft/R$id;->side_bar_map_switch_mode:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->mSwitchIcon:Landroid/widget/ImageView;

    .line 46
    sget v0, Lcom/powervision/aircraft/R$id;->side_bar_map_lock:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->mAutoLockIcon:Landroid/widget/ImageView;

    .line 47
    sget v0, Lcom/powervision/aircraft/R$id;->side_bar_location:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->mLocationIcon:Landroid/widget/ImageView;

    .line 48
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/MapSideBarView;->setListener()V

    return-void
.end method

.method private setListener()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->mShowIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->mSwitchIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->mAutoLockIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->mLocationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 62
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->mSideBarItemClickListener:Lcom/powervision/aircraft/ui/views/MapSideBarView$SideBarItemClickListener;

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$id;->side_bar_show_icon:I

    if-ne p1, v0, :cond_1

    .line 66
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->mSideBarItemClickListener:Lcom/powervision/aircraft/ui/views/MapSideBarView$SideBarItemClickListener;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->mShowIcon:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Lcom/powervision/aircraft/ui/views/MapSideBarView$SideBarItemClickListener;->onClickShow(Landroid/view/View;)V

    goto :goto_1

    .line 67
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->side_bar_map_switch_mode:I

    if-ne p1, v0, :cond_2

    .line 68
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->mSideBarItemClickListener:Lcom/powervision/aircraft/ui/views/MapSideBarView$SideBarItemClickListener;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->mSwitchIcon:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Lcom/powervision/aircraft/ui/views/MapSideBarView$SideBarItemClickListener;->onClickSwitchMode(Landroid/view/View;)V

    goto :goto_1

    .line 69
    :cond_2
    sget v0, Lcom/powervision/aircraft/R$id;->side_bar_map_lock:I

    if-ne p1, v0, :cond_4

    .line 70
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->isMapLocked:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->isMapLocked:Z

    if-eqz p1, :cond_3

    .line 72
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->mAutoLockIcon:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_map_locked_icon:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 74
    :cond_3
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->mAutoLockIcon:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_map_lock_icon:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->mSideBarItemClickListener:Lcom/powervision/aircraft/ui/views/MapSideBarView$SideBarItemClickListener;

    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->isMapLocked:Z

    invoke-interface {p1, v0}, Lcom/powervision/aircraft/ui/views/MapSideBarView$SideBarItemClickListener;->onClickLock(Z)V

    goto :goto_1

    .line 77
    :cond_4
    sget v0, Lcom/powervision/aircraft/R$id;->side_bar_location:I

    if-ne p1, v0, :cond_5

    .line 78
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->mSideBarItemClickListener:Lcom/powervision/aircraft/ui/views/MapSideBarView$SideBarItemClickListener;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->mLocationIcon:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Lcom/powervision/aircraft/ui/views/MapSideBarView$SideBarItemClickListener;->onClickLocation(Landroid/view/View;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setSideBarItemClickListener(Lcom/powervision/aircraft/ui/views/MapSideBarView$SideBarItemClickListener;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/MapSideBarView;->mSideBarItemClickListener:Lcom/powervision/aircraft/ui/views/MapSideBarView$SideBarItemClickListener;

    return-void
.end method
