.class public Lcom/powervision/gcs/adapter/ship/ShipMediaAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "ShipMediaAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShipMediaAdapter"


# instance fields
.field private final TITLES:[Ljava/lang/String;

.field shipMediaImageFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

.field shipMediaVideoFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 29
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$string;->MediaLib_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$string;->MediaLib_4:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    iput-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipMediaAdapter;->TITLES:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipMediaAdapter;->TITLES:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShipMediaAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 53
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipMediaAdapter;->shipMediaImageFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    return-object p1

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipMediaAdapter;->shipMediaVideoFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    if-nez p1, :cond_1

    .line 48
    invoke-static {}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->getInstance()Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipMediaAdapter;->shipMediaVideoFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipMediaAdapter;->shipMediaVideoFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    return-object p1

    .line 41
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipMediaAdapter;->shipMediaImageFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    if-nez p1, :cond_3

    .line 42
    invoke-static {}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->getInstance()Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipMediaAdapter;->shipMediaImageFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    .line 45
    :cond_3
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipMediaAdapter;->shipMediaImageFragment:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipMediaAdapter;->TITLES:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method
