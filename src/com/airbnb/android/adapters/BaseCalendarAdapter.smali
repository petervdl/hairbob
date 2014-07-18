.class public Lcom/airbnb/android/adapters/BaseCalendarAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseCalendarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/BaseCalendarAdapter$2;,
        Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;
    }
.end annotation


# static fields
.field private static final MONTH_NAME_FORMATTER:Ljava/text/SimpleDateFormat;


# instance fields
.field private final mCount:I

.field private final mDaysInMonth:I

.field protected mEndTime:Ljava/util/Calendar;

.field private final mFirstDayOfMonth:I

.field private final mIndexOfFirstDay:I

.field private final mIndexOfLastDay:I

.field protected mMillisCache:Lcom/airbnb/android/utils/EasyCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/android/utils/EasyCache",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mMonth:Ljava/util/Calendar;

.field private final mNextMonth:Ljava/util/Calendar;

.field protected final mNow:Ljava/util/Calendar;

.field private final mPrevMonth:Ljava/util/Calendar;

.field private final mSelectionTest:Ljava/util/Calendar;

.field protected mStartTime:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->MONTH_NAME_FORMATTER:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .registers 10
    .param p1, "month"    # Ljava/util/Calendar;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 57
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 49
    new-instance v2, Lcom/airbnb/android/adapters/BaseCalendarAdapter$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter$1;-><init>(Lcom/airbnb/android/adapters/BaseCalendarAdapter;)V

    iput-object v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mMillisCache:Lcom/airbnb/android/utils/EasyCache;

    .line 58
    iput-object p1, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mMonth:Ljava/util/Calendar;

    .line 59
    iget-object v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mMonth:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    iput-object v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mPrevMonth:Ljava/util/Calendar;

    .line 60
    iget-object v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mPrevMonth:Ljava/util/Calendar;

    const/4 v3, -0x1

    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->add(II)V

    .line 61
    iget-object v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mMonth:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    iput-object v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mNextMonth:Ljava/util/Calendar;

    .line 62
    iget-object v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mNextMonth:Ljava/util/Calendar;

    invoke-virtual {v2, v6, v5}, Ljava/util/Calendar;->add(II)V

    .line 64
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mNow:Ljava/util/Calendar;

    .line 65
    iget-object v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mNow:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 66
    iget-object v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mNow:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 67
    iget-object v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mNow:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 69
    iget-object v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mMonth:Ljava/util/Calendar;

    invoke-virtual {v2, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 70
    iget-object v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mMonth:Ljava/util/Calendar;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mFirstDayOfMonth:I

    .line 71
    iget-object v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mMonth:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    iput v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mDaysInMonth:I

    .line 72
    iget-object v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mMonth:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    .line 74
    .local v1, "firstDayOfWeek":I
    iget v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mFirstDayOfMonth:I

    if-lt v2, v1, :cond_91

    .line 75
    iget v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mFirstDayOfMonth:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mIndexOfFirstDay:I

    .line 79
    :goto_6f
    iget v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mIndexOfFirstDay:I

    iget v3, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mDaysInMonth:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mIndexOfLastDay:I

    .line 85
    iget v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mIndexOfFirstDay:I

    iget v3, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mDaysInMonth:I

    add-int v0, v2, v3

    .line 86
    .local v0, "count":I
    rem-int/lit8 v2, v0, 0x7

    if-eqz v2, :cond_99

    .line 87
    div-int/lit8 v2, v0, 0x7

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x7

    iput v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mCount:I

    .line 92
    :goto_8a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mSelectionTest:Ljava/util/Calendar;

    .line 93
    return-void

    .line 77
    .end local v0    # "count":I
    :cond_91
    rsub-int/lit8 v2, v1, 0x7

    iget v3, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mFirstDayOfMonth:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mIndexOfFirstDay:I

    goto :goto_6f

    .line 89
    .restart local v0    # "count":I
    :cond_99
    iput v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mCount:I

    goto :goto_8a
.end method

.method public constructor <init>(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)V
    .registers 4
    .param p1, "month"    # Ljava/util/Calendar;
    .param p2, "startTime"    # Ljava/util/Calendar;
    .param p3, "endTime"    # Ljava/util/Calendar;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;-><init>(Ljava/util/Calendar;)V

    .line 97
    iput-object p2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    .line 98
    iput-object p3, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mEndTime:Ljava/util/Calendar;

    .line 99
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 103
    iget v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mCount:I

    return v0
.end method

.method public getEndTime()Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mEndTime:Ljava/util/Calendar;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 8
    .param p1, "position"    # I

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 113
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mMonth:Ljava/util/Calendar;

    .line 115
    .local v0, "calendar":Ljava/util/Calendar;
    iget v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mIndexOfFirstDay:I

    if-ge p1, v2, :cond_37

    .line 116
    iget-object v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mPrevMonth:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "calendar":Ljava/util/Calendar;
    check-cast v0, Ljava/util/Calendar;

    .line 117
    .restart local v0    # "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 118
    .local v1, "daysInMonth":I
    iget v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mIndexOfFirstDay:I

    sub-int/2addr v2, p1

    sub-int v2, v1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 127
    .end local v1    # "daysInMonth":I
    :goto_20
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 128
    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 129
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 130
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 132
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2

    .line 119
    :cond_37
    iget v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mIndexOfLastDay:I

    if-le p1, v2, :cond_4b

    .line 120
    iget-object v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mNextMonth:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "calendar":Ljava/util/Calendar;
    check-cast v0, Ljava/util/Calendar;

    .line 121
    .restart local v0    # "calendar":Ljava/util/Calendar;
    iget v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mIndexOfLastDay:I

    sub-int v2, p1, v2

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_20

    .line 123
    :cond_4b
    iget v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mIndexOfFirstDay:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_20
.end method

.method public getNextMonth()Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mNextMonth:Ljava/util/Calendar;

    return-object v0
.end method

.method public getPreviousMonth()Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mPrevMonth:Ljava/util/Calendar;

    return-object v0
.end method

.method public getSelectionDuration()I
    .registers 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mEndTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/CalendarHelper;->getStayDuration(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public getStartTime()Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    return-object v0
.end method

.method public getThisMonth()Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mMonth:Ljava/util/Calendar;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 138
    .local v4, "context":Landroid/content/Context;
    if-nez p2, :cond_14

    .line 139
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f03001e

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 142
    :cond_14
    const v11, 0x7f080069

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 143
    .local v6, "dateText":Landroid/widget/TextView;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 146
    iget v11, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mIndexOfFirstDay:I

    sub-int v11, p1, v11

    add-int/lit8 v5, v11, 0x1

    .line 147
    .local v5, "date":I
    const v10, 0x7f0a0018

    .line 148
    .local v10, "textColorId":I
    const v1, 0x7f020051

    .line 150
    .local v1, "backgroundId":I
    iget v11, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mIndexOfFirstDay:I

    if-ge p1, v11, :cond_ba

    .line 152
    iget-object v11, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mPrevMonth:Ljava/util/Calendar;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v7

    .line 153
    .local v7, "daysInPrevMonth":I
    iget v11, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mIndexOfFirstDay:I

    sub-int/2addr v11, p1

    sub-int v11, v7, v11

    add-int/lit8 v5, v11, 0x1

    .line 159
    .end local v7    # "daysInPrevMonth":I
    :cond_42
    :goto_42
    const v11, 0x7f08006a

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 160
    .local v8, "month":Landroid/widget/TextView;
    iget v11, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mIndexOfFirstDay:I

    if-ne p1, v11, :cond_c3

    .line 161
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    sget-object v11, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->MONTH_NAME_FORMATTER:Ljava/text/SimpleDateFormat;

    iget-object v12, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mMonth:Ljava/util/Calendar;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :goto_68
    iget-object v11, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mMillisCache:Lcom/airbnb/android/utils/EasyCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, p1, v12}, Lcom/airbnb/android/utils/EasyCache;->getEntry(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 171
    .local v2, "cellTime":J
    iget-object v11, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mSelectionTest:Ljava/util/Calendar;

    invoke-virtual {v11, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 172
    iget-object v11, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mSelectionTest:Ljava/util/Calendar;

    iget-object v12, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mNow:Ljava/util/Calendar;

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e7

    .line 173
    const v10, 0x7f0a001b

    .line 174
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 179
    :goto_90
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v11

    if-lez v11, :cond_ee

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    .line 186
    .local v9, "parentWidth":I
    :goto_b1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    div-int/lit8 v12, v9, 0x7

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 188
    return-object p2

    .line 154
    .end local v2    # "cellTime":J
    .end local v8    # "month":Landroid/widget/TextView;
    .end local v9    # "parentWidth":I
    :cond_ba
    iget v11, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mIndexOfLastDay:I

    if-le p1, v11, :cond_42

    .line 156
    iget v11, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mIndexOfLastDay:I

    sub-int v5, p1, v11

    goto :goto_42

    .line 163
    .restart local v8    # "month":Landroid/widget/TextView;
    :cond_c3
    iget v11, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mIndexOfLastDay:I

    add-int/lit8 v11, v11, 0x1

    if-ne p1, v11, :cond_e1

    .line 164
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    sget-object v11, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->MONTH_NAME_FORMATTER:Ljava/text/SimpleDateFormat;

    iget-object v12, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mNextMonth:Ljava/util/Calendar;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_68

    .line 167
    :cond_e1
    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_68

    .line 176
    .restart local v2    # "cellTime":J
    :cond_e7
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_90

    .line 184
    :cond_ee
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    goto :goto_b1
.end method

.method protected isBeforeToday(I)Z
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 192
    iget-object v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mMillisCache:Lcom/airbnb/android/utils/EasyCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/airbnb/android/utils/EasyCache;->getEntry(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 193
    .local v0, "cellTime":J
    iget-object v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mSelectionTest:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 194
    iget-object v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mSelectionTest:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mNow:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method protected isToday(I)Z
    .registers 8
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x6

    const/4 v3, 0x1

    .line 198
    iget-object v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mMillisCache:Lcom/airbnb/android/utils/EasyCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Lcom/airbnb/android/utils/EasyCache;->getEntry(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 199
    .local v0, "cellTime":J
    iget-object v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mSelectionTest:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 200
    iget-object v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mSelectionTest:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v4, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mNow:Ljava/util/Calendar;

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v2, v4, :cond_35

    iget-object v2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mSelectionTest:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v4, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mNow:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v2, v4, :cond_35

    move v2, v3

    :goto_34
    return v2

    :cond_35
    const/4 v2, 0x0

    goto :goto_34
.end method

.method public onDateSelected(J)V
    .registers 10
    .param p1, "id"    # J

    .prologue
    const/4 v6, 0x0

    .line 258
    iget-object v4, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mSelectionTest:Ljava/util/Calendar;

    invoke-virtual {v4, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 260
    iget-object v4, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mSelectionTest:Ljava/util/Calendar;

    invoke-static {v4}, Lcom/airbnb/android/utils/CalendarHelper;->roundDateToMidnight(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    long-to-int v4, v4

    int-to-long v0, v4

    .line 261
    .local v0, "selectionMillis":J
    const-wide/16 v2, -0x1

    .line 263
    .local v2, "startMillis":J
    iget-object v4, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    if-eqz v4, :cond_24

    .line 264
    iget-object v4, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    invoke-static {v4}, Lcom/airbnb/android/utils/CalendarHelper;->roundDateToMidnight(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    long-to-int v4, v4

    int-to-long v2, v4

    .line 267
    :cond_24
    cmp-long v4, v0, v2

    if-nez v4, :cond_2f

    .line 269
    invoke-virtual {p0, v6}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->setStartTime(Ljava/util/Calendar;)V

    .line 270
    invoke-virtual {p0, v6}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->setEndTime(Ljava/util/Calendar;)V

    .line 291
    :cond_2e
    :goto_2e
    return-void

    .line 271
    :cond_2f
    iget-object v4, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    if-nez v4, :cond_39

    .line 273
    iget-object v4, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mSelectionTest:Ljava/util/Calendar;

    invoke-virtual {p0, v4}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->setStartTime(Ljava/util/Calendar;)V

    goto :goto_2e

    .line 275
    :cond_39
    iget-object v4, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mEndTime:Ljava/util/Calendar;

    if-nez v4, :cond_62

    .line 277
    iget-object v4, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mSelectionTest:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 279
    iget-object v4, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    invoke-virtual {p0, v4}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->setEndTime(Ljava/util/Calendar;)V

    .line 280
    iget-object v4, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mSelectionTest:Ljava/util/Calendar;

    invoke-virtual {p0, v4}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->setStartTime(Ljava/util/Calendar;)V

    goto :goto_2e

    .line 281
    :cond_52
    iget-object v4, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mSelectionTest:Ljava/util/Calendar;

    invoke-static {v4, v5}, Lcom/airbnb/android/utils/CalendarHelper;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 283
    iget-object v4, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mSelectionTest:Ljava/util/Calendar;

    invoke-virtual {p0, v4}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->setEndTime(Ljava/util/Calendar;)V

    goto :goto_2e

    .line 287
    :cond_62
    iget-object v4, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mSelectionTest:Ljava/util/Calendar;

    invoke-virtual {p0, v4}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->setStartTime(Ljava/util/Calendar;)V

    .line 288
    invoke-virtual {p0, v6}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->setEndTime(Ljava/util/Calendar;)V

    goto :goto_2e
.end method

.method public setEndTime(Ljava/util/Calendar;)V
    .registers 6
    .param p1, "endTime"    # Ljava/util/Calendar;

    .prologue
    const/4 v3, 0x0

    .line 239
    if-nez p1, :cond_a

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mEndTime:Ljava/util/Calendar;

    .line 249
    :cond_6
    :goto_6
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->notifyDataSetChanged()V

    .line 250
    return-void

    .line 241
    :cond_a
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mEndTime:Ljava/util/Calendar;

    invoke-static {v0, p1}, Lcom/airbnb/android/utils/CalendarHelper;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 242
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mEndTime:Ljava/util/Calendar;

    .line 244
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mEndTime:Ljava/util/Calendar;

    const/16 v1, 0xb

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 245
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mEndTime:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 246
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mEndTime:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_6
.end method

.method public setStartTime(Ljava/util/Calendar;)V
    .registers 5
    .param p1, "startTime"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x0

    .line 224
    if-nez p1, :cond_a

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    .line 235
    :cond_6
    :goto_6
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->notifyDataSetChanged()V

    .line 236
    return-void

    .line 226
    :cond_a
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    invoke-static {v0, p1}, Lcom/airbnb/android/utils/CalendarHelper;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 227
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    .line 230
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 231
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 232
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_6
.end method
