.class public Lcom/airbnb/android/events/ProfileUpdatedEvent;
.super Ljava/lang/Object;
.source "ProfileUpdatedEvent.java"


# instance fields
.field private mSection:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;)V
    .registers 2
    .param p1, "section"    # Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/airbnb/android/events/ProfileUpdatedEvent;->mSection:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    .line 11
    return-void
.end method


# virtual methods
.method public getSection()Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/airbnb/android/events/ProfileUpdatedEvent;->mSection:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    return-object v0
.end method
