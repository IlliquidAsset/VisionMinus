.class Lcom/mob/guard/impl/c$d;
.super Lcom/mob/guard/impl/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/guard/impl/c;->onMessageReceive(Ljava/lang/String;Lcom/mob/apc/APCMessage;J)Lcom/mob/apc/APCMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mob/guard/impl/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/mob/guard/impl/c$d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mob/guard/impl/c$d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mob/guard/impl/c$d;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mob/guard/impl/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/guard/impl/c$d;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/mob/guard/impl/c$d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/mob/guard/impl/c$d;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mob/guard/impl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
