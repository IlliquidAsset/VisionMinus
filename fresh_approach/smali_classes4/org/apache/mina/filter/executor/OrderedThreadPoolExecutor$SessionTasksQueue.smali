.class Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
.super Ljava/lang/Object;
.source "OrderedThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionTasksQueue"
.end annotation


# instance fields
.field private processingCompleted:Z

.field private final tasksQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;


# direct methods
.method private constructor <init>(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)V
    .locals 0

    .line 787
    iput-object p1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 789
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->tasksQueue:Ljava/util/Queue;

    const/4 p1, 0x1

    .line 792
    iput-boolean p1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->processingCompleted:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$1;)V
    .locals 0

    .line 787
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;-><init>(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Ljava/util/Queue;
    .locals 0

    .line 787
    iget-object p0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->tasksQueue:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Z
    .locals 0

    .line 787
    iget-boolean p0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->processingCompleted:Z

    return p0
.end method

.method static synthetic access$302(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;Z)Z
    .locals 0

    .line 787
    iput-boolean p1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->processingCompleted:Z

    return p1
.end method
