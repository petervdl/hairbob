.class public Lcom/airbnb/android/adapters/managelisting/TimeListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TimeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p4, "times":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 40
    const/16 v0, 0x19

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/managelisting/TimeListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .registers 9
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 21
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/text/SimpleDateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    .line 22
    .local v1, "format":Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 23
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v3, 0xb

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 24
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 25
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 26
    .local v2, "time":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_50

    .line 34
    .end local v2    # "time":Ljava/lang/String;
    :goto_22
    return-object v2

    .line 28
    .restart local v2    # "time":Ljava/lang/String;
    :sswitch_23
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/managelisting/TimeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e01e3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_22

    .line 30
    :sswitch_2f
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/managelisting/TimeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e04f9

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_22

    .line 32
    :sswitch_3f
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/managelisting/TimeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e04fc

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_22

    .line 26
    nop

    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_23
        0x1 -> :sswitch_2f
        0xd -> :sswitch_3f
    .end sparse-switch
.end method
