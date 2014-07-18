.class final Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;
.super Ljava/lang/Object;
.source "HostAvailabilityCalendarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CalendarHolder"
.end annotation


# instance fields
.field mGrid:Landroid/widget/GridView;

.field mHeaderGrid:Landroid/widget/GridView;

.field mMonth:Landroid/widget/TextView;

.field mNextButton:Landroid/widget/ImageView;

.field mPrevButton:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$1;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$CalendarHolder;-><init>()V

    return-void
.end method
