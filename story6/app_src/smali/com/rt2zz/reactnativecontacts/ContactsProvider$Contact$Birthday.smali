.class public Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;
.super Ljava/lang/Object;
.source "ContactsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Birthday"
.end annotation


# instance fields
.field public day:I

.field public month:I

.field public year:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 557
    iput v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;->year:I

    .line 558
    iput v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;->month:I

    .line 559
    iput v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;->day:I

    .line 568
    iput p1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;->month:I

    .line 569
    iput p2, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;->day:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 557
    iput v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;->year:I

    .line 558
    iput v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;->month:I

    .line 559
    iput v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;->day:I

    .line 562
    iput p1, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;->year:I

    .line 563
    iput p2, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;->month:I

    .line 564
    iput p3, p0, Lcom/rt2zz/reactnativecontacts/ContactsProvider$Contact$Birthday;->day:I

    return-void
.end method
