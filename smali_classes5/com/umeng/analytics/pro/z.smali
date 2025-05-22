.class public Lcom/umeng/analytics/pro/z;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CCDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/z$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "cc.db"

.field private static c:Landroid/content/Context;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "cc.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 33
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 13
    iput-object v1, p0, Lcom/umeng/analytics/pro/z;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/umeng/analytics/pro/z$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/z;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .line 11
    sget-object v0, Lcom/umeng/analytics/pro/z;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/z;
    .locals 1

    .line 26
    sget-object v0, Lcom/umeng/analytics/pro/z;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/z;->c:Landroid/content/Context;

    .line 29
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/pro/z$a;->a()Lcom/umeng/analytics/pro/z;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    :try_start_0
    const-string v0, "create table if not exists __cc(id INTEGER primary key autoincrement, __ts TEXT, __c TEXT, __a TEXT)"

    .line 48
    iput-object v0, p0, Lcom/umeng/analytics/pro/z;->b:Ljava/lang/String;

    .line 53
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/z;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
