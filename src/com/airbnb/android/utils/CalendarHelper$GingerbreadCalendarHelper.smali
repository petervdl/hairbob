.class Lcom/airbnb/android/utils/CalendarHelper$GingerbreadCalendarHelper;
.super Lcom/airbnb/android/utils/CalendarHelper;
.source "CalendarHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/utils/CalendarHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GingerbreadCalendarHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/airbnb/android/utils/CalendarHelper;-><init>(Landroid/content/Context;)V

    .line 89
    return-void
.end method


# virtual methods
.method public getDisplayName(IILjava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/airbnb/android/utils/CalendarHelper$GingerbreadCalendarHelper;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
