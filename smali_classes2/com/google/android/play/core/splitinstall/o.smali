.class final synthetic Lcom/google/android/play/core/splitinstall/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/splitinstall/t;


# static fields
.field static final a:Lcom/google/android/play/core/splitinstall/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/splitinstall/o;

    invoke-direct {v0}, Lcom/google/android/play/core/splitinstall/o;-><init>()V

    sput-object v0, Lcom/google/android/play/core/splitinstall/o;->a:Lcom/google/android/play/core/splitinstall/t;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/splitinstall/SplitInstallManager;)Lcom/google/android/play/core/tasks/Task;
    .locals 0

    invoke-interface {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->getSessionStates()Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method
