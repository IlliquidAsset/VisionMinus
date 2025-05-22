.class final Lcn/sharesdk/framework/h$1;
.super Ljava/lang/Object;
.source "ShareSDKCore.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/h;->a(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcn/sharesdk/framework/Platform;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform;)I
    .locals 2

    .line 115
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getSortId()I

    move-result v0

    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform;->getSortId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 116
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getSortId()I

    move-result p1

    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform;->getSortId()I

    move-result p2

    :goto_0
    sub-int/2addr p1, p2

    return p1

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result p1

    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result p2

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 113
    check-cast p1, Lcn/sharesdk/framework/Platform;

    check-cast p2, Lcn/sharesdk/framework/Platform;

    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/framework/h$1;->a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform;)I

    move-result p1

    return p1
.end method
