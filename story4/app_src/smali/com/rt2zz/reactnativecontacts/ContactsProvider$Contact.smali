.class Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;
.super Ljava/lang/Object;
.source "ContactsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rt2zz/reactnativecontacts/ContactsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Contact"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$PostalAddressItem;,
        Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;,
        Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Item;
    }
.end annotation


# instance fields
.field private birthday:Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;

.field private company:Ljava/lang/String;

.field private contactId:Ljava/lang/String;

.field private department:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private emails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Item;",
            ">;"
        }
    .end annotation
.end field

.field private familyName:Ljava/lang/String;

.field private givenName:Ljava/lang/String;

.field private hasPhoto:Z

.field private jobTitle:Ljava/lang/String;

.field private middleName:Ljava/lang/String;

.field private note:Ljava/lang/String;

.field private phones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Item;",
            ">;"
        }
    .end annotation
.end field

.field private photoUri:Ljava/lang/String;

.field private postalAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$PostalAddressItem;",
            ">;"
        }
    .end annotation
.end field

.field private prefix:Ljava/lang/String;

.field private rawContactId:Ljava/lang/String;

.field private suffix:Ljava/lang/String;

.field private urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 452
    iput-object v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->givenName:Ljava/lang/String;

    .line 453
    iput-object v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->middleName:Ljava/lang/String;

    .line 454
    iput-object v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->familyName:Ljava/lang/String;

    .line 455
    iput-object v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->prefix:Ljava/lang/String;

    .line 456
    iput-object v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->suffix:Ljava/lang/String;

    .line 457
    iput-object v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->company:Ljava/lang/String;

    .line 458
    iput-object v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->jobTitle:Ljava/lang/String;

    .line 459
    iput-object v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->department:Ljava/lang/String;

    .line 460
    iput-object v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->note:Ljava/lang/String;

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->urls:Ljava/util/List;

    const/4 v0, 0x0

    .line 462
    iput-boolean v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->hasPhoto:Z

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->emails:Ljava/util/List;

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->phones:Ljava/util/List;

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->postalAddresses:Ljava/util/List;

    .line 471
    iput-object p1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->contactId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;)Ljava/util/List;
    .locals 0

    .line 448
    iget-object p0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->phones:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->rawContactId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;)Ljava/util/List;
    .locals 0

    .line 448
    iget-object p0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->emails:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->company:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->jobTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->department:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;)Ljava/util/List;
    .locals 0

    .line 448
    iget-object p0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->postalAddresses:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;)Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->birthday:Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;

    return-object p1
.end method

.method static synthetic access$200(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;)Ljava/lang/String;
    .locals 0

    .line 448
    iget-object p0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->displayName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;)Ljava/lang/String;
    .locals 0

    .line 448
    iget-object p0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->photoUri:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->photoUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Z)Z
    .locals 0

    .line 448
    iput-boolean p1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->hasPhoto:Z

    return p1
.end method

.method static synthetic access$502(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->givenName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->middleName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->familyName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->prefix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->suffix:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public toMap()Lcom/facebook/react/bridge/WritableMap;
    .locals 9

    .line 475
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 476
    iget-object v1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->contactId:Ljava/lang/String;

    const-string v2, "recordID"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->rawContactId:Ljava/lang/String;

    const-string v2, "rawContactId"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->givenName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->displayName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->givenName:Ljava/lang/String;

    :goto_0
    const-string v2, "givenName"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->displayName:Ljava/lang/String;

    const-string v2, "displayName"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->middleName:Ljava/lang/String;

    const-string v2, "middleName"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->familyName:Ljava/lang/String;

    const-string v2, "familyName"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->prefix:Ljava/lang/String;

    const-string v2, "prefix"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->suffix:Ljava/lang/String;

    const-string v2, "suffix"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->company:Ljava/lang/String;

    const-string v2, "company"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->jobTitle:Ljava/lang/String;

    const-string v2, "jobTitle"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->department:Ljava/lang/String;

    const-string v2, "department"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->note:Ljava/lang/String;

    const-string v2, "note"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-boolean v1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->hasPhoto:Z

    const-string v2, "hasThumbnail"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 489
    iget-object v1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->photoUri:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    const-string v2, "thumbnailPath"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 492
    iget-object v2, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->phones:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "label"

    const-string v5, "id"

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Item;

    .line 493
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v6

    .line 494
    iget-object v7, v3, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Item;->value:Ljava/lang/String;

    const-string v8, "number"

    invoke-interface {v6, v8, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v7, v3, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Item;->label:Ljava/lang/String;

    invoke-interface {v6, v4, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v3, v3, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Item;->id:Ljava/lang/String;

    invoke-interface {v6, v5, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-interface {v1, v6}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_1

    :cond_2
    const-string v2, "phoneNumbers"

    .line 499
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    .line 501
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 502
    iget-object v2, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->urls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Item;

    .line 503
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v6

    .line 504
    iget-object v7, v3, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Item;->value:Ljava/lang/String;

    const-string v8, "url"

    invoke-interface {v6, v8, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v3, v3, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Item;->id:Ljava/lang/String;

    invoke-interface {v6, v5, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-interface {v1, v6}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_2

    :cond_3
    const-string v2, "urlAddresses"

    .line 508
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    .line 510
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 511
    iget-object v2, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->emails:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Item;

    .line 512
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v6

    .line 513
    iget-object v7, v3, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Item;->value:Ljava/lang/String;

    const-string v8, "email"

    invoke-interface {v6, v8, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v7, v3, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Item;->label:Ljava/lang/String;

    invoke-interface {v6, v4, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v3, v3, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Item;->id:Ljava/lang/String;

    invoke-interface {v6, v5, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-interface {v1, v6}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_3

    :cond_4
    const-string v2, "emailAddresses"

    .line 518
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    .line 520
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 521
    iget-object v2, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->postalAddresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$PostalAddressItem;

    .line 522
    iget-object v3, v3, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$PostalAddressItem;->map:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_4

    :cond_5
    const-string v2, "postalAddresses"

    .line 524
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    .line 526
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 527
    iget-object v2, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->birthday:Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;

    if-eqz v2, :cond_7

    .line 528
    iget v2, v2, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;->year:I

    if-lez v2, :cond_6

    const-string v3, "year"

    .line 529
    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 531
    :cond_6
    iget-object v2, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->birthday:Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;

    iget v2, v2, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;->month:I

    const-string v3, "month"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 532
    iget-object v2, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;->birthday:Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;

    iget v2, v2, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;->day:I

    const-string v3, "day"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v2, "birthday"

    .line 533
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :cond_7
    return-object v0
.end method
