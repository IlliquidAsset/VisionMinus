.class Lcom/mob/mobapm/internal/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/network/RawNetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mobapm/internal/e;->a(Ljava/lang/String;Ljava/io/OutputStream;Lcom/mob/mobapm/internal/e$c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/mob/mobapm/internal/e;[BLjava/io/OutputStream;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/mob/mobapm/internal/e$a;->a:[B

    iput-object p3, p0, Lcom/mob/mobapm/internal/e$a;->b:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/internal/e$a;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mob/mobapm/internal/e$a;->b:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/mob/mobapm/internal/e$a;->a:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    iget-object v0, p0, Lcom/mob/mobapm/internal/e$a;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method
