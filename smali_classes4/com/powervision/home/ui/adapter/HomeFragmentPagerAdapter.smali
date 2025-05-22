.class public Lcom/powervision/home/ui/adapter/HomeFragmentPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "HomeFragmentPagerAdapter.java"


# static fields
.field private static final fragments:[Landroidx/fragment/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/fragment/app/Fragment;

    .line 16
    sput-object v0, Lcom/powervision/home/ui/adapter/HomeFragmentPagerAdapter;->fragments:[Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 19
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 20
    sget-object p1, Lcom/powervision/home/ui/adapter/HomeFragmentPagerAdapter;->fragments:[Landroidx/fragment/app/Fragment;

    invoke-static {}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->newInstance()Lcom/powervision/home/ui/fragment/AP03HomeFragment;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 21
    sget-object p1, Lcom/powervision/home/ui/adapter/HomeFragmentPagerAdapter;->fragments:[Landroidx/fragment/app/Fragment;

    invoke-static {}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->newInstance()Lcom/powervision/home/ui/fragment/PVW4HomeFragment;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 31
    sget-object v0, Lcom/powervision/home/ui/adapter/HomeFragmentPagerAdapter;->fragments:[Landroidx/fragment/app/Fragment;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 26
    sget-object v0, Lcom/powervision/home/ui/adapter/HomeFragmentPagerAdapter;->fragments:[Landroidx/fragment/app/Fragment;

    aget-object p1, v0, p1

    return-object p1
.end method
