.class public Lcom/airbnb/android/utils/DateHelper;
.super Ljava/lang/Object;
.source "DateHelper.java"


# static fields
.field public static final ONE_DAY_MILLIS:J = 0x5265c00L

.field public static final ONE_HOUR_MILLIS:J = 0x36ee80L

.field public static final ONE_MINUTE_MILLIS:J = 0xea60L

.field public static final ONE_MONTH_MILLIS:J = 0x9cbea964L

.field public static final ONE_WEEK_MILLIS:J = 0x240c8400L

.field private static final TAG:Ljava/lang/String;

.field private static final YEAR_MONTH_DAY_FORMATTER:Ljava/text/SimpleDateFormat;

.field private static final sCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17
    const-class v0, Lcom/airbnb/android/utils/DateHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/utils/DateHelper;->TAG:Ljava/lang/String;

    .line 18
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/utils/DateHelper;->sCalendar:Ljava/util/Calendar;

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/utils/DateHelper;->YEAR_MONTH_DAY_FORMATTER:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareDay(Ljava/util/Date;Ljava/util/Date;)I
    .registers 11
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;

    .prologue
    const/4 v6, 0x6

    const/4 v4, 0x1

    .line 309
    sget-object v5, Lcom/airbnb/android/utils/DateHelper;->sCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 310
    sget-object v5, Lcom/airbnb/android/utils/DateHelper;->sCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 311
    .local v2, "year1":I
    sget-object v5, Lcom/airbnb/android/utils/DateHelper;->sCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 312
    .local v0, "day1":I
    sget-object v5, Lcom/airbnb/android/utils/DateHelper;->sCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 313
    sget-object v5, Lcom/airbnb/android/utils/DateHelper;->sCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 314
    .local v3, "year2":I
    sget-object v5, Lcom/airbnb/android/utils/DateHelper;->sCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 315
    .local v1, "day2":I
    if-ne v2, v3, :cond_2a

    if-ne v0, v1, :cond_2a

    const/4 v4, 0x0

    :cond_29
    :goto_29
    return v4

    :cond_2a
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_29

    const/4 v4, -0x1

    goto :goto_29
.end method

.method public static dateByOffset(Ljava/util/Date;I)Ljava/util/Date;
    .registers 9
    .param p0, "currentDate"    # Ljava/util/Date;
    .param p1, "days"    # I

    .prologue
    .line 323
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    int-to-long v3, p1

    const-wide/32 v5, 0x5265c00

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static dayCount(Ljava/util/Date;Ljava/util/Date;)I
    .registers 10
    .param p0, "start"    # Ljava/util/Date;
    .param p1, "end"    # Ljava/util/Date;

    .prologue
    .line 247
    const-wide/32 v2, 0x5265c00

    .line 248
    .local v2, "millisPerDay":J
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 249
    .local v0, "endTime":J
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 250
    .local v4, "startTime":J
    sub-long v6, v0, v4

    div-long/2addr v6, v2

    long-to-int v6, v6

    return v6
.end method

.method public static getArrivalTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 157
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 158
    .local v1, "cal":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 159
    const/16 v12, 0xb

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 160
    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 161
    const/16 v12, 0xd

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 162
    const/16 v12, 0xe

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 163
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 164
    .local v8, "time":J
    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long v4, v12, v8

    .line 166
    .local v4, "delta":J
    const-wide/32 v12, 0x5265c00

    cmp-long v12, v4, v12

    if-gez v12, :cond_3e

    .line 167
    const v12, 0x7f0e0090

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 180
    :goto_3d
    return-object v12

    .line 168
    :cond_3e
    const-wide/32 v12, 0xa4cb800

    cmp-long v12, v4, v12

    if-gez v12, :cond_51

    .line 169
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e008e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_3d

    .line 170
    :cond_51
    const-wide/32 v12, 0x240c8400

    cmp-long v12, v4, v12

    if-gez v12, :cond_77

    .line 171
    invoke-static {v4, v5}, Lcom/airbnb/android/utils/DateHelper;->toDays(J)J

    move-result-wide v2

    .line 172
    .local v2, "days":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d0025

    long-to-int v14, v2

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    long-to-int v0, v2

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_3d

    .line 173
    .end local v2    # "days":J
    :cond_77
    const-wide/32 v12, 0x48190800

    cmp-long v12, v4, v12

    if-gez v12, :cond_8a

    .line 174
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e0097

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_3d

    .line 175
    :cond_8a
    const-wide v12, 0x9cbea964L

    cmp-long v12, v4, v12

    if-gez v12, :cond_b2

    .line 176
    invoke-static {v4, v5}, Lcom/airbnb/android/utils/DateHelper;->toWeeks(J)J

    move-result-wide v10

    .line 177
    .local v10, "weeks":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d0027

    long-to-int v14, v10

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    long-to-int v0, v10

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_3d

    .line 179
    .end local v10    # "weeks":J
    :cond_b2
    invoke-static {v4, v5}, Lcom/airbnb/android/utils/DateHelper;->toMonths(J)J

    move-result-wide v6

    .line 180
    .local v6, "months":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d0026

    long-to-int v14, v6

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    long-to-int v0, v6

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3d
.end method

.method public static getArrivalTimeWithName(Landroid/content/Context;Ljava/util/Date;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "firstName"    # Ljava/lang/String;
    .param p3, "isCheckingIn"    # Z

    .prologue
    .line 121
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 122
    .local v1, "cal":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 123
    const/16 v12, 0xb

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 124
    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 125
    const/16 v12, 0xd

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 126
    const/16 v12, 0xe

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 127
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 128
    .local v8, "time":J
    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long v4, v12, v8

    .line 130
    .local v4, "delta":J
    const-wide/32 v12, 0x5265c00

    cmp-long v12, v4, v12

    if-gez v12, :cond_4a

    .line 131
    if-eqz p3, :cond_46

    const v12, 0x7f0e02a6

    :goto_39
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p2, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 148
    :goto_45
    return-object v12

    .line 131
    :cond_46
    const v12, 0x7f0e02af

    goto :goto_39

    .line 132
    :cond_4a
    const-wide/32 v12, 0xa4cb800

    cmp-long v12, v4, v12

    if-gez v12, :cond_69

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    if-eqz p3, :cond_65

    const v12, 0x7f0e029c

    :goto_5a
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p2, v14, v15

    invoke-virtual {v13, v12, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_45

    :cond_65
    const v12, 0x7f0e02a9

    goto :goto_5a

    .line 135
    :cond_69
    const-wide/32 v12, 0x240c8400

    cmp-long v12, v4, v12

    if-gez v12, :cond_99

    .line 136
    invoke-static {v4, v5}, Lcom/airbnb/android/utils/DateHelper;->toDays(J)J

    move-result-wide v2

    .line 137
    .local v2, "days":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    if-eqz p3, :cond_95

    const v12, 0x7f0d0014

    :goto_7d
    long-to-int v14, v2

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p2, v15, v16

    const/16 v16, 0x1

    long-to-int v0, v2

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v12, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_45

    :cond_95
    const v12, 0x7f0d0017

    goto :goto_7d

    .line 139
    .end local v2    # "days":J
    :cond_99
    const-wide/32 v12, 0x48190800

    cmp-long v12, v4, v12

    if-gez v12, :cond_b8

    .line 140
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    if-eqz p3, :cond_b4

    const v12, 0x7f0e02a4

    :goto_a9
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p2, v14, v15

    invoke-virtual {v13, v12, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_45

    :cond_b4
    const v12, 0x7f0e02b2

    goto :goto_a9

    .line 142
    :cond_b8
    const-wide v12, 0x9cbea964L

    cmp-long v12, v4, v12

    if-gez v12, :cond_eb

    .line 143
    invoke-static {v4, v5}, Lcom/airbnb/android/utils/DateHelper;->toWeeks(J)J

    move-result-wide v10

    .line 144
    .local v10, "weeks":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    if-eqz p3, :cond_e7

    const v12, 0x7f0d0016

    :goto_ce
    long-to-int v14, v10

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p2, v15, v16

    const/16 v16, 0x1

    long-to-int v0, v10

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v12, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_45

    :cond_e7
    const v12, 0x7f0d0019

    goto :goto_ce

    .line 147
    .end local v10    # "weeks":J
    :cond_eb
    invoke-static {v4, v5}, Lcom/airbnb/android/utils/DateHelper;->toMonths(J)J

    move-result-wide v6

    .line 148
    .local v6, "months":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    if-eqz p3, :cond_111

    const v12, 0x7f0d0015

    :goto_f8
    long-to-int v14, v6

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p2, v15, v16

    const/16 v16, 0x1

    long-to-int v0, v6

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v12, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_45

    :cond_111
    const v12, 0x7f0d0018

    goto :goto_f8
.end method

.method public static getArrivesDepartsTime(Landroid/content/Context;Ljava/util/Date;ZZ)Ljava/lang/String;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "isArriving"    # Z
    .param p3, "isHHDoublePane"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 186
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/airbnb/android/utils/DateHelper;->getDateMillis(J)J

    move-result-wide v6

    sub-long v1, v4, v6

    .line 188
    .local v1, "delta":J
    if-eqz p3, :cond_20

    .line 189
    if-eqz p2, :cond_1c

    const v4, 0x7f0e0291

    :goto_17
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 198
    :goto_1b
    return-object v4

    .line 189
    :cond_1c
    const v4, 0x7f0e0295

    goto :goto_17

    .line 191
    :cond_20
    const-wide/32 v4, 0x5265c00

    cmp-long v4, v1, v4

    if-gez v4, :cond_49

    .line 192
    new-instance v3, Ljava/text/SimpleDateFormat;

    const v4, 0x7f0e013d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 193
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "dateString":Ljava/lang/String;
    if-eqz p2, :cond_45

    const v4, 0x7f0e0292

    :goto_3c
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v0, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1b

    :cond_45
    const v4, 0x7f0e0296

    goto :goto_3c

    .line 196
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_49
    new-instance v3, Ljava/text/SimpleDateFormat;

    const v4, 0x7f0e0293

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 197
    .restart local v3    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .restart local v0    # "dateString":Ljava/lang/String;
    if-eqz p2, :cond_67

    const v4, 0x7f0e0290

    :goto_5e
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v0, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1b

    :cond_67
    const v4, 0x7f0e0294

    goto :goto_5e
.end method

.method public static getCalendarFromString(Ljava/lang/String;)Ljava/util/Calendar;
    .registers 4
    .param p0, "dateString"    # Ljava/lang/String;

    .prologue
    .line 266
    invoke-static {p0}, Lcom/airbnb/android/utils/DateHelper;->getDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 267
    .local v0, "date":Ljava/util/Date;
    if-eqz v0, :cond_f

    .line 268
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/DateHelper;->getDateAsCalendar(J)Ljava/util/Calendar;

    move-result-object v1

    .line 270
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static getDateAsCalendar(J)Ljava/util/Calendar;
    .registers 5
    .param p0, "millis"    # J

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 209
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 210
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 211
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 212
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 213
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 214
    return-object v0
.end method

.method public static getDateFromString(Ljava/lang/String;)Ljava/util/Date;
    .registers 5
    .param p0, "dateString"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 255
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 257
    :try_start_6
    sget-object v1, Lcom/airbnb/android/utils/DateHelper;->YEAR_MONTH_DAY_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_b
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    .line 262
    :goto_c
    return-object v1

    .line 258
    :catch_d
    move-exception v0

    .line 259
    .local v0, "e":Ljava/text/ParseException;
    sget-object v1, Lcom/airbnb/android/utils/DateHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ParseException for dateString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_27
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public static getDateMillis(J)J
    .registers 4
    .param p0, "millis"    # J

    .prologue
    .line 204
    invoke-static {p0, p1}, Lcom/airbnb/android/utils/DateHelper;->getDateAsCalendar(J)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getExpiresAt(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 84
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v2, v8, v10

    .line 85
    .local v2, "delta":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gtz v8, :cond_14

    .line 86
    const/4 v8, 0x0

    .line 96
    :goto_13
    return-object v8

    .line 88
    :cond_14
    const-wide/32 v8, 0x36ee80

    cmp-long v8, v2, v8

    if-gez v8, :cond_34

    .line 89
    invoke-static {v2, v3}, Lcom/airbnb/android/utils/DateHelper;->toMinutes(J)J

    move-result-wide v6

    .line 90
    .local v6, "minutes":J
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d000b

    long-to-int v10, v6

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_13

    .line 91
    .end local v6    # "minutes":J
    :cond_34
    const-wide/32 v8, 0x5265c00

    cmp-long v8, v2, v8

    if-gez v8, :cond_54

    .line 92
    invoke-static {v2, v3}, Lcom/airbnb/android/utils/DateHelper;->toHours(J)J

    move-result-wide v4

    .line 93
    .local v4, "hours":J
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d000a

    long-to-int v10, v4

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_13

    .line 95
    .end local v4    # "hours":J
    :cond_54
    invoke-static {v2, v3}, Lcom/airbnb/android/utils/DateHelper;->toDays(J)J

    move-result-wide v0

    .line 96
    .local v0, "days":J
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0009

    long-to-int v10, v0

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_13
.end method

.method public static getRelativeDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .registers 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    sub-long v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 32
    .local v3, "delta":J
    const-wide/32 v15, 0xea60

    cmp-long v15, v3, v15

    if-gez v15, :cond_21

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0e036c

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 61
    :goto_20
    return-object v15

    .line 35
    :cond_21
    const-wide/32 v15, 0x36ee80

    cmp-long v15, v3, v15

    if-gez v15, :cond_4b

    .line 36
    invoke-static {v3, v4}, Lcom/airbnb/android/utils/DateHelper;->toMinutes(J)J

    move-result-wide v7

    .line 37
    .local v7, "minutes":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0d0035

    long-to-int v0, v7

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_20

    .line 39
    .end local v7    # "minutes":J
    :cond_4b
    const-wide/32 v15, 0x5265c00

    cmp-long v15, v3, v15

    if-gez v15, :cond_75

    .line 40
    invoke-static {v3, v4}, Lcom/airbnb/android/utils/DateHelper;->toHours(J)J

    move-result-wide v5

    .line 41
    .local v5, "hours":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0d002e

    long-to-int v0, v5

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_20

    .line 43
    .end local v5    # "hours":J
    :cond_75
    const-wide/32 v15, 0xa4cb800

    cmp-long v15, v3, v15

    if-gez v15, :cond_86

    .line 44
    const v15, 0x7f0e085c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_20

    .line 46
    :cond_86
    const-wide/32 v15, 0x240c8400

    cmp-long v15, v3, v15

    if-gez v15, :cond_b1

    .line 47
    invoke-static {v3, v4}, Lcom/airbnb/android/utils/DateHelper;->toDays(J)J

    move-result-wide v1

    .line 48
    .local v1, "days":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0d002a

    long-to-int v0, v1

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_20

    .line 50
    .end local v1    # "days":J
    :cond_b1
    const-wide v15, 0x90321000L

    cmp-long v15, v3, v15

    if-gez v15, :cond_de

    .line 51
    invoke-static {v3, v4}, Lcom/airbnb/android/utils/DateHelper;->toWeeks(J)J

    move-result-wide v11

    .line 52
    .local v11, "weeks":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0d0041

    long-to-int v0, v11

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_20

    .line 54
    .end local v11    # "weeks":J
    :cond_de
    const-wide v15, 0x758eff0b0L

    cmp-long v15, v3, v15

    if-gez v15, :cond_10b

    .line 55
    invoke-static {v3, v4}, Lcom/airbnb/android/utils/DateHelper;->toMonths(J)J

    move-result-wide v9

    .line 56
    .local v9, "months":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0d0036

    long-to-int v0, v9

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_20

    .line 59
    .end local v9    # "months":J
    :cond_10b
    invoke-static {v3, v4}, Lcom/airbnb/android/utils/DateHelper;->toYears(J)J

    move-result-wide v13

    .line 60
    .local v13, "years":J
    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-nez v15, :cond_117

    const-wide/16 v13, 0x1

    .line 61
    :cond_117
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0d0043

    long-to-int v0, v13

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_20
.end method

.method public static getStringDateSpan(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startDate"    # Ljava/util/Calendar;
    .param p2, "endDate"    # Ljava/util/Calendar;

    .prologue
    .line 281
    new-instance v0, Ljava/text/SimpleDateFormat;

    const v1, 0x7f0e013d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    const v1, 0x7f0e02b7

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStringDateSpan(Landroid/content/Context;Ljava/util/Date;I)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startDate"    # Ljava/util/Date;
    .param p2, "nights"    # I

    .prologue
    .line 286
    new-instance v2, Ljava/text/SimpleDateFormat;

    const v4, 0x7f0e013d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 290
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 291
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 292
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "startString":Ljava/lang/String;
    const/4 v4, 0x5

    invoke-virtual {v0, v4, p2}, Ljava/util/Calendar;->add(II)V

    .line 296
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "endString":Ljava/lang/String;
    const v4, 0x7f0e02b7

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getStringFromDate(Ljava/util/Date;)Ljava/lang/String;
    .registers 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 274
    if-nez p0, :cond_4

    .line 275
    const/4 v0, 0x0

    .line 277
    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Lcom/airbnb/android/utils/DateHelper;->YEAR_MONTH_DAY_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static getTimePassed(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long v2, v8, v10

    .line 69
    .local v2, "delta":J
    const-wide/32 v8, 0xea60

    cmp-long v8, v2, v8

    if-gez v8, :cond_1b

    .line 70
    const v8, 0x7f0e036c

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 79
    :goto_1a
    return-object v8

    .line 71
    :cond_1b
    const-wide/32 v8, 0x36ee80

    cmp-long v8, v2, v8

    if-gez v8, :cond_3b

    .line 72
    invoke-static {v2, v3}, Lcom/airbnb/android/utils/DateHelper;->toMinutes(J)J

    move-result-wide v6

    .line 73
    .local v6, "minutes":J
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0033

    long-to-int v10, v6

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1a

    .line 74
    .end local v6    # "minutes":J
    :cond_3b
    const-wide/32 v8, 0x5265c00

    cmp-long v8, v2, v8

    if-gez v8, :cond_5b

    .line 75
    invoke-static {v2, v3}, Lcom/airbnb/android/utils/DateHelper;->toHours(J)J

    move-result-wide v4

    .line 76
    .local v4, "hours":J
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0030

    long-to-int v10, v4

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1a

    .line 78
    .end local v4    # "hours":J
    :cond_5b
    invoke-static {v2, v3}, Lcom/airbnb/android/utils/DateHelper;->toDays(J)J

    move-result-wide v0

    .line 79
    .local v0, "days":J
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d002b

    long-to-int v10, v0

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1a
.end method

.method public static getTimeRemaining(Landroid/content/Context;Ljava/util/Date;Z)Ljava/lang/String;
    .registers 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dateInFuture"    # Ljava/util/Date;
    .param p2, "useRemainingSuffix"    # Z

    .prologue
    .line 101
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v2, v8, v10

    .line 102
    .local v2, "delta":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gez v8, :cond_12

    .line 103
    const/4 v8, 0x0

    .line 115
    :goto_11
    return-object v8

    .line 105
    :cond_12
    const-wide/32 v8, 0xea60

    cmp-long v8, v2, v8

    if-gez v8, :cond_21

    .line 106
    const v8, 0x7f0e036c

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_11

    .line 107
    :cond_21
    const-wide/32 v8, 0x36ee80

    cmp-long v8, v2, v8

    if-gez v8, :cond_49

    .line 108
    invoke-static {v2, v3}, Lcom/airbnb/android/utils/DateHelper;->toMinutes(J)J

    move-result-wide v6

    .line 109
    .local v6, "minutes":J
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz p2, :cond_45

    const v8, 0x7f0d0034

    :goto_35
    long-to-int v10, v6

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v8, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_11

    :cond_45
    const v8, 0x7f0d0032

    goto :goto_35

    .line 110
    .end local v6    # "minutes":J
    :cond_49
    const-wide/32 v8, 0x5265c00

    cmp-long v8, v2, v8

    if-gez v8, :cond_71

    .line 111
    invoke-static {v2, v3}, Lcom/airbnb/android/utils/DateHelper;->toHours(J)J

    move-result-wide v4

    .line 112
    .local v4, "hours":J
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz p2, :cond_6d

    const v8, 0x7f0d0031

    :goto_5d
    long-to-int v10, v4

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v8, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_11

    :cond_6d
    const v8, 0x7f0d002f

    goto :goto_5d

    .line 114
    .end local v4    # "hours":J
    :cond_71
    invoke-static {v2, v3}, Lcom/airbnb/android/utils/DateHelper;->toDays(J)J

    move-result-wide v0

    .line 115
    .local v0, "days":J
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz p2, :cond_8e

    const v8, 0x7f0d002c

    :goto_7e
    long-to-int v10, v0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v8, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_11

    :cond_8e
    const v8, 0x7f0d0029

    goto :goto_7e
.end method

.method public static is24Hour(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "time_12_24"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "clockType":Ljava/lang/String;
    const-string/jumbo v1, "12"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .registers 3
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;

    .prologue
    .line 319
    invoke-static {p0, p1}, Lcom/airbnb/android/utils/DateHelper;->compareDay(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static toDays(J)J
    .registers 6
    .param p0, "date"    # J

    .prologue
    .line 230
    invoke-static {p0, p1}, Lcom/airbnb/android/utils/DateHelper;->toHours(J)J

    move-result-wide v0

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static toHours(J)J
    .registers 6
    .param p0, "date"    # J

    .prologue
    .line 226
    invoke-static {p0, p1}, Lcom/airbnb/android/utils/DateHelper;->toMinutes(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static toMinutes(J)J
    .registers 6
    .param p0, "date"    # J

    .prologue
    .line 222
    invoke-static {p0, p1}, Lcom/airbnb/android/utils/DateHelper;->toSeconds(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static toMonths(J)J
    .registers 6
    .param p0, "date"    # J

    .prologue
    .line 238
    invoke-static {p0, p1}, Lcom/airbnb/android/utils/DateHelper;->toDays(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static toSeconds(J)J
    .registers 4
    .param p0, "date"    # J

    .prologue
    .line 218
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    return-wide v0
.end method

.method public static toWeeks(J)J
    .registers 6
    .param p0, "date"    # J

    .prologue
    .line 234
    invoke-static {p0, p1}, Lcom/airbnb/android/utils/DateHelper;->toDays(J)J

    move-result-wide v0

    const-wide/16 v2, 0x7

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static toYears(J)J
    .registers 6
    .param p0, "date"    # J

    .prologue
    .line 242
    invoke-static {p0, p1}, Lcom/airbnb/android/utils/DateHelper;->toDays(J)J

    move-result-wide v0

    const-wide/16 v2, 0x16d

    div-long/2addr v0, v2

    return-wide v0
.end method
