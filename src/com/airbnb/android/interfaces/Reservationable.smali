.class public interface abstract Lcom/airbnb/android/interfaces/Reservationable;
.super Ljava/lang/Object;
.source "Reservationable.java"

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract getCheckinDate()Ljava/util/Date;
.end method

.method public abstract getCheckoutDate()Ljava/util/Date;
.end method

.method public abstract getId()J
.end method

.method public abstract getStatus()Lcom/airbnb/android/models/ReservationStatus;
.end method
