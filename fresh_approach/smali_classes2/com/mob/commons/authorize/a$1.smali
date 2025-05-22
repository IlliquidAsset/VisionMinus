.class Lcom/mob/commons/authorize/a$1;
.super Ljava/lang/Object;
.source "Authorizer.java"

# interfaces
.implements Lcom/mob/commons/LockAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/authorize/a;->a(Lcom/mob/commons/MobProduct;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/mob/commons/MobProduct;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/mob/commons/authorize/a;


# direct methods
.method constructor <init>(Lcom/mob/commons/authorize/a;[Ljava/lang/String;Lcom/mob/commons/MobProduct;Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/mob/commons/authorize/a$1;->d:Lcom/mob/commons/authorize/a;

    iput-object p2, p0, Lcom/mob/commons/authorize/a$1;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/mob/commons/authorize/a$1;->b:Lcom/mob/commons/MobProduct;

    iput-object p4, p0, Lcom/mob/commons/authorize/a$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 4

    .line 55
    iget-object p1, p0, Lcom/mob/commons/authorize/a$1;->d:Lcom/mob/commons/authorize/a;

    invoke-static {p1}, Lcom/mob/commons/authorize/a;->a(Lcom/mob/commons/authorize/a;)Z

    move-result p1

    .line 56
    iget-object v0, p0, Lcom/mob/commons/authorize/a$1;->a:[Ljava/lang/String;

    iget-object v1, p0, Lcom/mob/commons/authorize/a$1;->d:Lcom/mob/commons/authorize/a;

    iget-object v2, p0, Lcom/mob/commons/authorize/a$1;->b:Lcom/mob/commons/MobProduct;

    iget-object v3, p0, Lcom/mob/commons/authorize/a$1;->c:Ljava/lang/String;

    invoke-static {v1, v2, p1, v3}, Lcom/mob/commons/authorize/a;->a(Lcom/mob/commons/authorize/a;Lcom/mob/commons/MobProduct;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return v1
.end method
