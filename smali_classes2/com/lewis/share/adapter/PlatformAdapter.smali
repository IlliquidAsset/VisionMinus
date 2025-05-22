.class public Lcom/lewis/share/adapter/PlatformAdapter;
.super Landroid/widget/BaseAdapter;
.source "PlatformAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/share/adapter/PlatformAdapter$PlatformHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIcons:[I

.field private mTitles:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;[I[I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lewis/share/adapter/PlatformAdapter;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/lewis/share/adapter/PlatformAdapter;->mTitles:[I

    .line 26
    iput-object p3, p0, Lcom/lewis/share/adapter/PlatformAdapter;->mIcons:[I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/lewis/share/adapter/PlatformAdapter;->mIcons:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/lewis/share/adapter/PlatformAdapter;->mIcons:[I

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 48
    iget-object p2, p0, Lcom/lewis/share/adapter/PlatformAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/lewis/share/R$layout;->media_item_share_platform:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 49
    new-instance p3, Lcom/lewis/share/adapter/PlatformAdapter$PlatformHolder;

    invoke-direct {p3, p0, p2}, Lcom/lewis/share/adapter/PlatformAdapter$PlatformHolder;-><init>(Lcom/lewis/share/adapter/PlatformAdapter;Landroid/view/View;)V

    .line 50
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lewis/share/adapter/PlatformAdapter$PlatformHolder;

    .line 54
    :goto_0
    iget-object v1, p3, Lcom/lewis/share/adapter/PlatformAdapter$PlatformHolder;->mPlatform:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lewis/share/adapter/PlatformAdapter;->mTitles:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 55
    iget-object p3, p3, Lcom/lewis/share/adapter/PlatformAdapter$PlatformHolder;->mPlatform:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lewis/share/adapter/PlatformAdapter;->mIcons:[I

    aget p1, v1, p1

    invoke-virtual {p3, v0, p1, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-object p2
.end method
