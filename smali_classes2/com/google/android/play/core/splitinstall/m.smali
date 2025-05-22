.class final synthetic Lcom/google/android/play/core/splitinstall/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/splitinstall/t;


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/play/core/splitinstall/m;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/splitinstall/SplitInstallManager;)Lcom/google/android/play/core/tasks/Task;
    .locals 1

    iget v0, p0, Lcom/google/android/play/core/splitinstall/m;->a:I

    invoke-interface {p1, v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->cancelInstall(I)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method
