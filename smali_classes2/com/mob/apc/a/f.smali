.class public Lcom/mob/apc/a/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lcom/mob/apc/APCMessage;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/mob/apc/APCException;

.field public e:J


# direct methods
.method public constructor <init>(Lcom/mob/apc/APCMessage;Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mob/apc/a/f;->d:Lcom/mob/apc/APCException;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mob/apc/a/f;->e:J

    iput-object p1, p0, Lcom/mob/apc/a/f;->a:Lcom/mob/apc/APCMessage;

    iput-object p2, p0, Lcom/mob/apc/a/f;->b:Ljava/lang/String;

    invoke-static {}, Lcom/mob/apc/MobAPC;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/apc/a/f;->c:Ljava/lang/String;

    iput-wide p3, p0, Lcom/mob/apc/a/f;->e:J

    return-void
.end method

.method public static a(Landroid/os/Parcel;)Lcom/mob/apc/a/f;
    .locals 4

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    new-instance v2, Lcom/mob/apc/a/f;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Lcom/mob/apc/a/f;-><init>(Lcom/mob/apc/APCMessage;Ljava/lang/String;J)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/mob/apc/APCMessage;

    invoke-direct {v0}, Lcom/mob/apc/APCMessage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/mob/apc/APCMessage;->readFromParcel(Landroid/os/Parcel;)Lcom/mob/apc/APCMessage;

    move-result-object v0

    iput-object v0, v2, Lcom/mob/apc/a/f;->a:Lcom/mob/apc/APCMessage;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/mob/apc/a/f;->b:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/mob/apc/a/f;->c:Ljava/lang/String;

    :cond_2
    return-object v2
.end method


# virtual methods
.method public a(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/mob/apc/a/f;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/mob/apc/a/f;->a:Lcom/mob/apc/APCMessage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/mob/apc/a/f;->a:Lcom/mob/apc/APCMessage;

    invoke-virtual {v0, p1, p2}, Lcom/mob/apc/APCMessage;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_0
    iget-object p2, p0, Lcom/mob/apc/a/f;->b:Ljava/lang/String;

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/mob/apc/a/f;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/mob/apc/MobAPC;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mob/apc/a/f;->c:Ljava/lang/String;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/mob/apc/a/f;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InnerMessage{apcMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/apc/a/f;->a:Lcom/mob/apc/APCMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", businessID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/apc/a/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pkg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mob/apc/a/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
