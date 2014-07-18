.class public Lcom/airbnb/android/models/Contact;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private contactId:J

.field private contactMethods:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContactName:Ljava/lang/String;

.field private selectedContactMethods:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "contactId"    # J

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/models/Contact;->contactMethods:Ljava/util/HashSet;

    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/models/Contact;->selectedContactMethods:Ljava/util/HashSet;

    .line 16
    iput-wide p1, p0, Lcom/airbnb/android/models/Contact;->contactId:J

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/airbnb/android/models/Contact;->mContactName:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public containsContactInfo(Ljava/lang/Integer;)Z
    .registers 3
    .param p1, "contactInfoIndex"    # Ljava/lang/Integer;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/models/Contact;->selectedContactMethods:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public deselectContactInfo(Ljava/lang/Integer;)V
    .registers 3
    .param p1, "phoneNumberIndex"    # Ljava/lang/Integer;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/airbnb/android/models/Contact;->selectedContactMethods:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public getContactId()J
    .registers 3

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/airbnb/android/models/Contact;->contactId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/airbnb/android/models/Contact;->mContactName:Ljava/lang/String;

    return-object v0
.end method

.method public howManyInfosSelected()I
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/android/models/Contact;->selectedContactMethods:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public howManyInfosTotal()I
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airbnb/android/models/Contact;->contactMethods:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public initAddContactInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/airbnb/android/models/Contact;->contactMethods:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/airbnb/android/models/Contact;->contactMethods:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeContactInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/android/models/Contact;->contactMethods:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public saveContactInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/airbnb/android/models/Contact;->contactMethods:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public selectContactInfo(Ljava/lang/Integer;)V
    .registers 3
    .param p1, "phoneNumberIndex"    # Ljava/lang/Integer;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/android/models/Contact;->selectedContactMethods:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public selectedContactIndexes()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/airbnb/android/models/Contact;->selectedContactMethods:Ljava/util/HashSet;

    return-object v0
.end method

.method public selectedContactInfo()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/airbnb/android/models/Contact;->contactMethods:Ljava/util/HashSet;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/airbnb/android/models/Contact;->mContactName:Ljava/lang/String;

    .line 70
    return-void
.end method
