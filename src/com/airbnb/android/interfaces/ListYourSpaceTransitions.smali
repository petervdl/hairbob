.class public interface abstract Lcom/airbnb/android/interfaces/ListYourSpaceTransitions;
.super Ljava/lang/Object;
.source "ListYourSpaceTransitions.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/BaseListingTransitions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;
    }
.end annotation


# virtual methods
.method public abstract forStep()Landroid/support/v4/app/Fragment;
.end method

.method public abstract setCity(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPropertyType(Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;)V
.end method

.method public abstract setRoomsAndBeds(IIIF)V
.end method

.method public abstract setSpaceType(Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;)V
.end method
