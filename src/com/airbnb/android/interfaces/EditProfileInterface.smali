.class public interface abstract Lcom/airbnb/android/interfaces/EditProfileInterface;
.super Ljava/lang/Object;
.source "EditProfileInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;,
        Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;
    }
.end annotation


# virtual methods
.method public abstract doneEdit(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;Ljava/lang/Object;)V
.end method

.method public abstract doneEditName(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onNameSectionSelected()V
.end method

.method public abstract onPhoneNumbersSelected()V
.end method

.method public abstract onProfileSectionSelected(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;)V
.end method

.method public abstract unregisterOnBackListener()V
.end method
