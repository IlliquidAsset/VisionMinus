.class public Lcom/powervision/aircraft/ui/views/MapOptionView;
.super Landroid/widget/LinearLayout;
.source "MapOptionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/views/MapOptionView$MapOptionAgent;
    }
.end annotation


# instance fields
.field private drawLineEnable:Z

.field private mapLcok:Landroid/widget/ImageView;

.field private mapLoction:Landroid/widget/ImageView;

.field private mapOptionAgent:Lcom/powervision/aircraft/ui/views/MapOptionView$MapOptionAgent;

.field private mapPath:Landroid/widget/ImageView;

.field private mapType:Landroid/widget/ImageView;

.field private rotateGesturesEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->rotateGesturesEnabled:Z

    .line 20
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->drawLineEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 18
    iput-boolean p2, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->rotateGesturesEnabled:Z

    .line 20
    iput-boolean p2, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->drawLineEnable:Z

    .line 34
    sget p2, Lcom/powervision/aircraft/R$layout;->aircraft_map_option_view_layout:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/MapOptionView;->initView()V

    .line 36
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/MapOptionView;->setListener()V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 40
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_path_img:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/MapOptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->mapPath:Landroid/widget/ImageView;

    .line 41
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_location_img:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/MapOptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->mapLoction:Landroid/widget/ImageView;

    .line 42
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_lock_img:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/MapOptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->mapLcok:Landroid/widget/ImageView;

    .line 43
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_map_type_img:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/MapOptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->mapType:Landroid/widget/ImageView;

    return-void
.end method

.method private setListener()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->mapPath:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->mapLoction:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->mapLcok:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->mapType:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 56
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_path_img:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 57
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->drawLineEnable:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->drawLineEnable:Z

    .line 58
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->mapPath:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    sget p1, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_path_open_icon:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_path_icon:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->mapOptionAgent:Lcom/powervision/aircraft/ui/views/MapOptionView$MapOptionAgent;

    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->drawLineEnable:Z

    invoke-interface {p1, v0}, Lcom/powervision/aircraft/ui/views/MapOptionView$MapOptionAgent;->setAricraftPath(Z)V

    goto :goto_1

    .line 61
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_location_img:I

    if-ne p1, v0, :cond_2

    .line 62
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->mapOptionAgent:Lcom/powervision/aircraft/ui/views/MapOptionView$MapOptionAgent;

    invoke-interface {p1}, Lcom/powervision/aircraft/ui/views/MapOptionView$MapOptionAgent;->setAricraftLocation()V

    goto :goto_1

    .line 64
    :cond_2
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_lock_img:I

    if-ne p1, v0, :cond_4

    .line 65
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->rotateGesturesEnabled:Z

    if-eqz p1, :cond_3

    .line 66
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->mapOptionAgent:Lcom/powervision/aircraft/ui/views/MapOptionView$MapOptionAgent;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/views/MapOptionView$MapOptionAgent;->setMapLock(Z)V

    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->rotateGesturesEnabled:Z

    .line 68
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->mapLcok:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_map_lock_icon:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->mapOptionAgent:Lcom/powervision/aircraft/ui/views/MapOptionView$MapOptionAgent;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/views/MapOptionView$MapOptionAgent;->setMapLock(Z)V

    .line 71
    iput-boolean v1, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->rotateGesturesEnabled:Z

    .line 72
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->mapLcok:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_map_locked_icon:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 75
    :cond_4
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_map_type_img:I

    if-ne p1, v0, :cond_5

    .line 76
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->mapOptionAgent:Lcom/powervision/aircraft/ui/views/MapOptionView$MapOptionAgent;

    invoke-interface {p1}, Lcom/powervision/aircraft/ui/views/MapOptionView$MapOptionAgent;->setMapType()V

    :cond_5
    :goto_1
    return-void
.end method

.method public setMapOptionListener(Lcom/powervision/aircraft/ui/views/MapOptionView$MapOptionAgent;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/MapOptionView;->mapOptionAgent:Lcom/powervision/aircraft/ui/views/MapOptionView$MapOptionAgent;

    return-void
.end method
