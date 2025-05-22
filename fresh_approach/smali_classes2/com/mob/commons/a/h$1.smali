.class Lcom/mob/commons/a/h$1;
.super Ljava/lang/Object;
.source "DClt.java"

# interfaces
.implements Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/h;->a(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/a/h;


# direct methods
.method constructor <init>(Lcom/mob/commons/a/h;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/mob/commons/a/h$1;->a:Lcom/mob/commons/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/HashMap;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 56
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 57
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 58
    iput p1, v0, Landroid/os/Message;->what:I

    .line 59
    iget-object p1, p0, Lcom/mob/commons/a/h$1;->a:Lcom/mob/commons/a/h;

    invoke-virtual {p1, v0}, Lcom/mob/commons/a/h;->b(Landroid/os/Message;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/mob/commons/a/h$1;->a(Ljava/util/HashMap;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
