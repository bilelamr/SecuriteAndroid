.class public Lcom/pushwoosh/richmedia/RichMedia;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/richmedia/RichMedia$Source;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/pushwoosh/richmedia/RichMedia$Source;

.field private d:Lcom/pushwoosh/inapp/view/b/a/b;

.field private e:Z

.field private f:Z


# direct methods
.method constructor <init>(Lcom/pushwoosh/inapp/view/b/a/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/pushwoosh/richmedia/RichMedia;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/richmedia/RichMedia;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/pushwoosh/richmedia/RichMedia;->d:Lcom/pushwoosh/inapp/view/b/a/b;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/b/a/b;->b()Lcom/pushwoosh/inapp/e/b/b;

    move-result-object p1

    iget-object v0, p0, Lcom/pushwoosh/richmedia/RichMedia;->d:Lcom/pushwoosh/inapp/view/b/a/b;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/view/b/a/b;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/pushwoosh/richmedia/RichMedia;->e:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/pushwoosh/richmedia/RichMedia;->a:Ljava/lang/String;

    const-string v0, "resource is empty"

    invoke-static {p1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/pushwoosh/richmedia/RichMedia;->f:Z

    iget-object v0, p0, Lcom/pushwoosh/richmedia/RichMedia;->d:Lcom/pushwoosh/inapp/view/b/a/b;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/view/b/a/b;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/pushwoosh/richmedia/RichMedia;->e:Z

    sget-object v0, Lcom/pushwoosh/richmedia/RichMedia$1;->a:[I

    iget-object v1, p0, Lcom/pushwoosh/richmedia/RichMedia;->d:Lcom/pushwoosh/inapp/view/b/a/b;

    invoke-virtual {v1}, Lcom/pushwoosh/inapp/view/b/a/b;->e()Lcom/pushwoosh/inapp/view/b/a/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ResourceType can not equals REMOTE URL"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/richmedia/RichMedia;->b:Ljava/lang/String;

    sget-object p1, Lcom/pushwoosh/richmedia/RichMedia$Source;->PushMessageSource:Lcom/pushwoosh/richmedia/RichMedia$Source;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/richmedia/RichMedia;->b:Ljava/lang/String;

    sget-object p1, Lcom/pushwoosh/richmedia/RichMedia$Source;->InAppSource:Lcom/pushwoosh/richmedia/RichMedia$Source;

    :goto_0
    iput-object p1, p0, Lcom/pushwoosh/richmedia/RichMedia;->c:Lcom/pushwoosh/richmedia/RichMedia$Source;

    :goto_1
    return-void
.end method


# virtual methods
.method a()Lcom/pushwoosh/inapp/view/b/a/b;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/richmedia/RichMedia;->d:Lcom/pushwoosh/inapp/view/b/a/b;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-class v2, Lcom/pushwoosh/richmedia/RichMedia;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/pushwoosh/richmedia/RichMedia;

    iget-object v2, p0, Lcom/pushwoosh/richmedia/RichMedia;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/pushwoosh/richmedia/RichMedia;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/pushwoosh/richmedia/RichMedia;->c:Lcom/pushwoosh/richmedia/RichMedia$Source;

    iget-object p1, p1, Lcom/pushwoosh/richmedia/RichMedia;->c:Lcom/pushwoosh/richmedia/RichMedia$Source;

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/richmedia/RichMedia;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Lcom/pushwoosh/richmedia/RichMedia$Source;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/richmedia/RichMedia;->c:Lcom/pushwoosh/richmedia/RichMedia$Source;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/richmedia/RichMedia;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/pushwoosh/richmedia/RichMedia;->c:Lcom/pushwoosh/richmedia/RichMedia$Source;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isLockScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pushwoosh/richmedia/RichMedia;->e:Z

    return v0
.end method

.method public isRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pushwoosh/richmedia/RichMedia;->f:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RichMedia{content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pushwoosh/richmedia/RichMedia;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", resourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pushwoosh/richmedia/RichMedia;->c:Lcom/pushwoosh/richmedia/RichMedia$Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
