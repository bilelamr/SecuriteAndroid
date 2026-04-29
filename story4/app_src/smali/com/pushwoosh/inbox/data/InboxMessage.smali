.class public interface abstract Lcom/pushwoosh/inbox/data/InboxMessage;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/pushwoosh/inbox/data/InboxMessage;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getBannerUrl()Ljava/lang/String;
.end method

.method public abstract getCode()Ljava/lang/String;
.end method

.method public abstract getImageUrl()Ljava/lang/String;
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getSendDate()Ljava/util/Date;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/pushwoosh/inbox/data/InboxMessageType;
.end method

.method public abstract isActionPerformed()Z
.end method

.method public abstract isRead()Z
.end method
