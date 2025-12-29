package com.souravdevopsdev.tictactoe.service;

import org.springframework.stereotype.Service;

@Service
public class GameService {
    public String checkWinner(String[] board) {
        int[][] lines = {
            {0,1,2},{3,4,5},{6,7,8},
            {0,3,6},{1,4,7},{2,5,8},
            {0,4,8},{2,4,6}
        };
        for (int[] l : lines) {
            String a = board[l[0]], b = board[l[1]], c = board[l[2]];
            if (a != null && !a.isEmpty() && a.equals(b) && a.equals(c)) return a;
        }
        boolean full = true;
        for (String cell : board) {
            if (cell == null || cell.isEmpty()) { full = false; break; }
        }
        return full ? "draw" : null;
    }
}
