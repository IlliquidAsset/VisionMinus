.class public abstract Lcn/sharesdk/framework/b/b/c;
.super Ljava/lang/Object;
.source "BaseEvent.java"


# instance fields
.field public e:J

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract a(J)V
.end method

.method protected abstract b()I
.end method

.method protected abstract c()I
.end method

.method protected abstract d()J
.end method

.method protected abstract e()J
.end method

.method protected abstract f()V
.end method

.method public g()Z
    .locals 9

    .line 30
    invoke-virtual {p0}, Lcn/sharesdk/framework/b/b/c;->b()I

    move-result v0

    .line 31
    invoke-virtual {p0}, Lcn/sharesdk/framework/b/b/c;->c()I

    move-result v1

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 33
    invoke-virtual {p0}, Lcn/sharesdk/framework/b/b/c;->e()J

    move-result-wide v4

    sub-long v4, v2, v4

    int-to-long v6, v0

    const/4 v0, 0x1

    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    .line 34
    invoke-virtual {p0}, Lcn/sharesdk/framework/b/b/c;->d()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 38
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcn/sharesdk/framework/b/b/c;->a(J)V

    return v0
.end method

.method public h()V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcn/sharesdk/framework/b/b/c;->f()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-virtual {p0}, Lcn/sharesdk/framework/b/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    iget-wide v1, p0, Lcn/sharesdk/framework/b/b/c;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    iget-object v2, p0, Lcn/sharesdk/framework/b/b/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    iget-object v2, p0, Lcn/sharesdk/framework/b/b/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    iget v2, p0, Lcn/sharesdk/framework/b/b/c;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    iget-object v2, p0, Lcn/sharesdk/framework/b/b/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    iget v2, p0, Lcn/sharesdk/framework/b/b/c;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Lcn/sharesdk/framework/b/b/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
