.class public Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$HostAvailabilityCalendarAdapter;
.super Lcom/airbnb/android/adapters/SquareCalendarAdapter;
.source "HostAvailabilityCalendarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HostAvailabilityCalendarAdapter"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Calendar;Lcom/airbnb/android/models/SquareMap;)V
    .registers 3
    .param p1, "month"    # Ljava/util/Calendar;
    .param p2, "squares"    # Lcom/airbnb/android/models/SquareMap;

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;-><init>(Ljava/util/Calendar;Lcom/airbnb/android/models/SquareMap;)V

    .line 128
    return-void
.end method


# virtual methods
.method public updateView(ILcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/utils/DrawableCompositor;Landroid/view/View;)V
    .registers 9
    .param p1, "position"    # I
    .param p2, "today"    # Lcom/airbnb/android/models/CalendarSquare;
    .param p3, "yesterday"    # Lcom/airbnb/android/models/CalendarSquare;
    .param p4, "compositor"    # Lcom/airbnb/android/utils/DrawableCompositor;
    .param p5, "convertView"    # Landroid/view/View;

    .prologue
    .line 134
    invoke-virtual {p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 135
    .local v0, "res":Landroid/content/res/Resources;
    if-eqz p2, :cond_2d

    invoke-virtual {p2}, Lcom/airbnb/android/models/CalendarSquare;->getAvailability()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 136
    const v1, 0x7f0a0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p5, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 137
    const v1, 0x7f080069

    invoke-virtual {p5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a001b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$HostAvailabilityCalendarAdapter;->isToday(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 141
    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/airbnb/android/utils/DrawableCompositor;->addDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    :cond_3d
    return-void
.end method
