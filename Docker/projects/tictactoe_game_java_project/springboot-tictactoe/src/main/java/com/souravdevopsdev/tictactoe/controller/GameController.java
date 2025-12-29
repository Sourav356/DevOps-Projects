package com.souravdevopsdev.tictactoe.controller;

import com.souravdevopsdev.tictactoe.service.GameService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


import java.util.Map;
import java.util.HashMap;

@RestController
@RequestMapping("/api")
public class GameController {
    private final GameService gameService;
    public GameController(GameService gameService) { this.gameService = gameService; }

    @PostMapping("/move")
    public ResponseEntity<?> move(@RequestBody Map<String, Object> body) {
        String[] board = new String[9];
        var arr = (java.util.List<?>) body.get("board");
        for (int i = 0; i < 9; i++) board[i] = (String) arr.get(i);

        String player = (String) body.getOrDefault("player", "X");
        Object posObj = body.getOrDefault("pos", -1);
        int pos = (posObj instanceof Number) ? ((Number) posObj).intValue() : -1;

        if (pos < 0 || pos > 8 || (board[pos] != null && !board[pos].isEmpty()))
            return ResponseEntity.badRequest().body(Map.of("error", "invalid move"));

        board[pos] = player;
        String winner = gameService.checkWinner(board);

        Map<String,Object> result = new HashMap<>();
        result.put("board", board);
        result.put("winner", winner); // safe, allows null
        return ResponseEntity.ok(result);

    }
}
