.class public Lcom/mob/mobapm/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/mob/mobapm/e/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mob/mobapm/e/a;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/mob/mobapm/e/a;->b:J

    return-void
.end method

.method static synthetic a(Lcom/mob/mobapm/e/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mob/mobapm/e/a;->b:J

    return-wide v0
.end method

.method static synthetic a(Lcom/mob/mobapm/e/a;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/mob/mobapm/e/a;->b:J

    return-wide p1
.end method

.method static synthetic a(Lcom/mob/mobapm/e/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mob/mobapm/e/a;->a:Ljava/lang/String;

    return-object p1
.end method

.method public static declared-synchronized b()Lcom/mob/mobapm/e/a;
    .locals 2

    const-class v0, Lcom/mob/mobapm/e/a;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/mob/mobapm/e/a;->c:Lcom/mob/mobapm/e/a;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/mob/mobapm/e/a;

    invoke-direct {v1}, Lcom/mob/mobapm/e/a;-><init>()V

    sput-object v1, Lcom/mob/mobapm/e/a;->c:Lcom/mob/mobapm/e/a;

    .line 5
    :cond_0
    sget-object v1, Lcom/mob/mobapm/e/a;->c:Lcom/mob/mobapm/e/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic b(Lcom/mob/mobapm/e/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/mobapm/e/a;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 4
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ActivityTracker;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/ActivityTracker;

    move-result-object v0

    new-instance v1, Lcom/mob/mobapm/e/a$a;

    invoke-direct {v1, p0}, Lcom/mob/mobapm/e/a$a;-><init>(Lcom/mob/mobapm/e/a;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/ActivityTracker;->addTracker(Lcom/mob/tools/utils/ActivityTracker$Tracker;)V

    return-void
.end method
