.class public Lcn/sharesdk/framework/utils/g;
.super Ljava/lang/Object;
.source "SizeHelper.java"


# static fields
.field public static a:F = 1.5f

.field public static b:I = 0x21c

.field private static c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(I)I
    .locals 2

    .line 29
    sget-object v0, Lcn/sharesdk/framework/utils/g;->c:Landroid/content/Context;

    sget v1, Lcn/sharesdk/framework/utils/g;->a:F

    invoke-static {v0, v1, p0}, Lcom/mob/tools/utils/ResHelper;->designToDevice(Landroid/content/Context;FI)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 19
    sget-object v0, Lcn/sharesdk/framework/utils/g;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 20
    :cond_0
    sput-object p0, Lcn/sharesdk/framework/utils/g;->c:Landroid/content/Context;

    :cond_1
    return-void
.end method

.method public static b(I)I
    .locals 2

    .line 37
    sget-object v0, Lcn/sharesdk/framework/utils/g;->c:Landroid/content/Context;

    sget v1, Lcn/sharesdk/framework/utils/g;->b:I

    invoke-static {v0, v1, p0}, Lcom/mob/tools/utils/ResHelper;->designToDevice(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method
