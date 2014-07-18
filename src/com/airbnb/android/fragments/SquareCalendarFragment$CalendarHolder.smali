.class final Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;
.super Ljava/lang/Object;
.source "SquareCalendarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/SquareCalendarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CalendarHolder"
.end annotation


# instance fields
.field mGrid:Lcom/airbnb/android/views/StaticHeightGridView;

.field mHeaderGrid:Landroid/widget/GridView;

.field mMonth:Landroid/widget/TextView;

.field mNextButton:Landroid/widget/ImageView;

.field mPendingLabel:Landroid/widget/TextView;

.field mPrevButton:Landroid/widget/ImageView;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
