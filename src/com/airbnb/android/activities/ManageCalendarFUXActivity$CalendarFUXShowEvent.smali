.class public Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFUXShowEvent;
.super Ljava/lang/Object;
.source "ManageCalendarFUXActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/activities/ManageCalendarFUXActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarFUXShowEvent"
.end annotation


# instance fields
.field public fuxed:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2
    .param p1, "fuxed"    # Z

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-boolean p1, p0, Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFUXShowEvent;->fuxed:Z

    .line 156
    return-void
.end method
