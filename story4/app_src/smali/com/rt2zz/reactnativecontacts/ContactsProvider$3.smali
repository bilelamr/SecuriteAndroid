.class final Lcom/rt2zz/reactnativecontacts/ContactsProvider$3;
.super Ljava/util/ArrayList;
.source "ContactsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rt2zz/reactnativecontacts/ContactsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "photo_uri"

    .line 80
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
