.class public Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$LapsePager;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "AirCraftContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LapsePager"
.end annotation


# instance fields
.field private fragments:[Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;I[Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 452
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    .line 453
    iput-object p3, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$LapsePager;->fragments:[Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 469
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$LapsePager;->fragments:[Landroidx/fragment/app/Fragment;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$LapsePager;->fragments:[Landroidx/fragment/app/Fragment;

    aget-object p1, v0, p1

    return-object p1
.end method
