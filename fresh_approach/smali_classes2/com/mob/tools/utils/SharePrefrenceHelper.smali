.class public Lcom/mob/tools/utils/SharePrefrenceHelper;
.super Ljava/lang/Object;
.source "SharePrefrenceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/SharePrefrenceHelper$OnCommitListener;,
        Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->context:Landroid/content/Context;

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->clear()V

    :cond_0
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 171
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    .line 176
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 177
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 178
    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 179
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 180
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    .line 183
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public getAll()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->getAll()Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    .line 192
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p1, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1, p2, p3}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide p2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public open(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;I)V

    return-void
.end method

.method public open(Ljava/lang/String;I)V
    .locals 1

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 42
    new-instance p2, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;

    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->context:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 155
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 156
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 157
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 158
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 159
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 161
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    const/4 v0, 0x2

    .line 162
    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    .line 163
    invoke-virtual {p0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 165
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public putAll(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->putAll(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public putFloat(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->putFloat(Ljava/lang/String;F)V

    :cond_0
    return-void
.end method

.method public putInt(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public putLong(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOnCommitListener(Lcom/mob/tools/utils/SharePrefrenceHelper$OnCommitListener;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->prefrence:Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->setOnCommitListener(Lcom/mob/tools/utils/SharePrefrenceHelper$OnCommitListener;)V

    :cond_0
    return-void
.end method
