.class Lcom/umeng/analytics/pro/z$a;
.super Ljava/lang/Object;
.source "CCDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/umeng/analytics/pro/z;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lcom/umeng/analytics/pro/z;

    invoke-static {}, Lcom/umeng/analytics/pro/z;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/umeng/analytics/pro/z;-><init>(Landroid/content/Context;Lcom/umeng/analytics/pro/z$1;)V

    sput-object v0, Lcom/umeng/analytics/pro/z$a;->a:Lcom/umeng/analytics/pro/z;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/analytics/pro/z;
    .locals 1

    .line 17
    sget-object v0, Lcom/umeng/analytics/pro/z$a;->a:Lcom/umeng/analytics/pro/z;

    return-object v0
.end method
