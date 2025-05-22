.class Lcom/umeng/analytics/pro/aa$a;
.super Ljava/lang/Object;
.source "CCDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/umeng/analytics/pro/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/umeng/analytics/pro/aa;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/aa;-><init>(Lcom/umeng/analytics/pro/aa$1;)V

    sput-object v0, Lcom/umeng/analytics/pro/aa$a;->a:Lcom/umeng/analytics/pro/aa;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/analytics/pro/aa;
    .locals 1

    .line 32
    sget-object v0, Lcom/umeng/analytics/pro/aa$a;->a:Lcom/umeng/analytics/pro/aa;

    return-object v0
.end method
