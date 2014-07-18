.class public interface abstract Lcom/airbnb/android/interfaces/ManageListingTransitions;
.super Ljava/lang/Object;
.source "ManageListingTransitions.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/BaseListingTransitions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;,
        Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingInstantBook;,
        Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;,
        Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;
    }
.end annotation


# virtual methods
.method public abstract deleteListingPrompt()V
.end method

.method public abstract doneTextField(ILjava/lang/String;)V
.end method

.method public abstract doneWithAddressSelection(Lcom/airbnb/android/models/Listing;)V
.end method

.method public abstract doneWithPreList()V
.end method

.method public abstract getListingObject()Lcom/airbnb/android/models/Listing;
.end method

.method public abstract onItemSelected(Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;)V
.end method

.method public abstract onTextItemSelected(ILjava/lang/String;)V
.end method

.method public abstract setAdditionalPrices(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract setAmenities(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/AmenitiesItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setInstantBookSettings(ZLcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;)V
.end method

.method public abstract setLongTermPricing(II)V
.end method

.method public abstract setPrice(Ljava/lang/String;)V
.end method

.method public abstract setRoomsBedsAndSpaceType(IIIFLcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;)V
.end method

.method public abstract setTerms(Lcom/airbnb/android/models/Listing;)V
.end method

.method public abstract unRegisterOnBackListener()V
.end method

.method public abstract updateAddress(Lcom/airbnb/android/models/Listing;Z)V
.end method

.method public abstract updateLocation(Lcom/airbnb/android/models/Listing;ZZ)V
.end method
