.class public final Lcn/sharesdk/framework/utils/QRCodeUtil/l$a;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/framework/utils/QRCodeUtil/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/l$a;->a:I

    .line 205
    iput p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/l$a;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 209
    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/l$a;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 213
    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/l$a;->b:I

    return v0
.end method
